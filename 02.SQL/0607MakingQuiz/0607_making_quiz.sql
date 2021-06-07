

-- 월급여가 1000 달러 이상인 사원만을 대상으로, 1000달러 당 별표시(*) 한 개가 출력되도록 하세요.
/*입출력 예시
입력값(empno): 7369
출력값: 적용 대상이 아닙니다.

입력값(empno): 7698
출력값: **

입력값(empno): 7839
출력값: *****
*/

declare
    v_empno emp.empno%type := &eno;
    v_sal emp.sal%type;
    v_star_num number;
    v_star varchar2(9);
begin
    select sal
        into v_sal
    from emp
    where empno = v_empno;

    if v_sal >= 1000 then
        v_star_num := trunc(v_sal/1000);
        for i in 1..v_star_num loop
            v_star := v_star||'*';
        end loop;
    else
        dbms_output.put_line('적용 대상이 아닙니다.');
    end if;
    
    dbms_output.put_line(v_star);
end;
/
