/*
使用说明：
仅在创建完表后使用，无需事先导入任何数据
在运行完这个文件之后，再运行你的solution.sql
并通过select * from $TABLE的方式来与以下答案进行对比验证
*/

-- INSERT INTO users VALUES (1, 'user1');
-- INSERT INTO users VALUES (2, 'user2');
-- INSERT INTO movies VALUES (1, 'Comedy movie');
-- INSERT INTO movies VALUES (2, 'Romance movie');
-- INSERT INTO movies VALUES (3, 'Comedy and Romance movie');
INSERT INTO movies VALUES (4, 'Comedy movie 1');
-- INSERT INTO genres VALUES (1, 'Comedy');
-- INSERT INTO genres VALUES (2, 'Romance');
-- INSERT INTO ratings VALUES (1, 1, 2, 1661546436);
-- INSERT INTO ratings VALUES (1, 2, 4, 1661546437);
-- INSERT INTO ratings VALUES (2, 1, 3, 1661546438);
-- INSERT INTO ratings VALUES (2, 3, 1, 1661546438);
-- INSERT INTO hasagenre VALUES (1, 1);
-- INSERT INTO hasagenre VALUES (2, 2);
-- INSERT INTO hasagenre VALUES (3, 1);
-- INSERT INTO hasagenre VALUES (3, 2);
INSERT INTO hasagenre VALUES (4, 1);

/*
各query的答案如下（如果你使用的不是postgresql，那么你应该能看到相似的结果）：

query1:
         name         | moviecount 
----------------------+------------
 Romance              |          2
 Comedy               |          2

==============================================================================================================

query2:
         name         |       rating       
----------------------+--------------------
 Romance              | 2.5000000000000000
 Comedy               | 2.0000000000000000

==============================================================================================================

query3(原来的结果):
  title | countofratings 
-------+----------------

query3(把有至少10次评分改为有至少2次评分结果):
                              title                               | countofratings 
------------------------------------------------------------------+----------------
 Comedy movie                                                     |              2

==============================================================================================================

query4:
  movieid |                              title                               
----------+------------------------------------------------------------------
       1  | Comedy movie                                                    
       3  | Comedy and Romance movie   
       
============================================================================================================== 

query5:
                              title                               |        average         
------------------------------------------------------------------+------------------------
 Comedy and Romance movie                                         | 1.00000000000000000000
 Romance movie                                                    |     4.0000000000000000
 Comedy movie                                                     |     2.5000000000000000

============================================================================================================== 

query6:
      average       
--------------------
 2.0000000000000000

============================================================================================================== 

query7:
        average         
------------------------
 1.00000000000000000000

==============================================================================================================

query8:
      average       
--------------------
 4.0000000000000000

==============================================================================================================

query9(v1=1的结果):
 movieid | rating 
---------+--------
       1 |      2
       2 |      4

注意事项：
1.名称不要使用缩写，例如query1写成q1，average写成avg等
2.注意column的顺序，请按照作业要求中的来
3.不必担心column名称的大小写问题，只要名称的字母对了都可以接受
4.不必保留小数点后n位，如果你做了也没有关系
5.不要在脚本中添加更改数据库系统设置或编码的命令
6.不必对结果进行排序
7.注意syntax error
8.只需要提交solution.sql即可，不必使用其他名字（例如xxx_assignment2_solution.sql等），
  任何需要补充的地方请以comment block的形式添加在你的脚本中，并请不要上传压缩包
*/
