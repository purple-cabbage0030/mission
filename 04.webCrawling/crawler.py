from selenium import webdriver 
from bs4 import BeautifulSoup 
import time
import pandas as pd
# import seaborn as sns
import matplotlib.pyplot as plt
from matplotlib import font_manager, rc



class Crawling():
    def crawl_exel():
        browser = webdriver.Chrome('c:/driver/chromedriver.exe')
        results = []

        for page in range(1,11):
            url = f"https://youtube-rank.com/board/bbs/board.php?bo_table=youtube&page={page}" 
            browser.get(url)
            time.sleep(2)
            html = browser.page_source
            soup = BeautifulSoup(html, 'html.parser')
            channel_list = soup.select('form > table > tbody > tr')

            for channel in channel_list:
                title = channel.select('h1 > a')[0].text.strip() 
                category = channel.select('p.category')[0].text.strip()
                subscriber = channel.select('.subscriber_cnt')[0].text 
                view = channel.select('.view_cnt')[0].text
                video = channel.select('.video_cnt')[0].text
                data = [title, category, subscriber, view, video]
                results.append(data)

        df = pd.DataFrame(results)
        df.columns = ['title', 'category', 'subscriber', 'view', 'video']
        df.to_excel('./youtube_rank.xlsx', index = False)


    def visual1():
        path = 'c:/Windows/Fonts/malgun.ttf'
        font_name = font_manager.FontProperties(fname = path).get_name()
        rc('font', family = font_name)

        df = pd.read_excel('youtube_rank.xlsx')

        df['subscriber'] = df['subscriber'].str.replace('만', '0000')
        df['replaced_subscriber'] = df['subscriber'].astype('int64')
        pivot_df = df.pivot_table(index = 'category', values = 'replaced_subscriber', aggfunc = ['sum','count'])
        pivot_df.columns = ['subscriber_sum', 'category_count']
        pivot_df = pivot_df.reset_index()
        pivot_df = pivot_df.sort_values(by='subscriber_sum', ascending=False)
        plt.figure(figsize = (10, 10))
        plt.pie(pivot_df['subscriber_sum'], labels=pivot_df['category'], autopct='%1.1f%%')
        plt.savefig("./7.graphWeb/static/img/pie1.png")


if __name__ == '__main__':
    # Crawling.crawl_exel()
    # Crawling.visual1()
    pass