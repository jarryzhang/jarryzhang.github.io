# Markdown 使用技巧 #
###标题
\# 一级标题  
\## 二级标题  
\### 三级标题

###正文
正文就随便写写  
<!--此处是注释-->

####换行
如果编辑的时候只按回车
是不会显示换行的  
所以要加“空格+空格+回车”

####强调
加下划线或星号都有强调  
前后各一个是*斜体*  
前后各两个是**加粗**  

### 插入公式 ###
**方法1：利用google chart 的服务器**  
<!--<p><img src="http://chart.googleapis.com/chart?cht=tx&chl= insert the formula here" style="border:none;"></p> -->
<p><img src="http://chart.googleapis.com/chart?cht=tx&chl= \Large x=\frac{-b\pm\sqrt{b^2-4ac}}{2a}" style="border:none;"></p>

但是要用LaTeX来写公式  
  
**方法2：利用forkosh服务器**  
<!--<p><img src="http://www.forkosh.com/mathtex.cgi? insert the formula here"></p>-->
<img src="http://www.forkosh.com/mathtex.cgi? \Large x=\frac{-b\pm\sqrt{b^2-4ac}}{2a}">   
  
个人觉得google chart的公式好看一些

### 列表
**无序号列表**  

* 用*号  
- 用-号
+ 用+号

**有序号列表**

1. aaa
2. bbb
1. AAA

### 链接
方括号文字+小括号链接
[google.com的超链接](https://www.google.com)

### 图片
<!--![github}](http://clever-cloud.com/assets/img/github-icon.svg "github")-->
<img src="http://clever-cloud.com/assets/img/github-icon.svg" width = "100"/>
<img src="../images/favicon.ico" width = "100"/>

### code
```
printf("hello world!");
```  
```
echo "hello world!"
```
### 分割线  

---
***
三个-或者*


### 引用  
> this is quotes  
> quote block
  

### 编辑器
+ Web: [mahua](http://mahua.jser.me/)
+ Windows: MarkdownPad2
+ Linux: Vim + markdown2
+ OS X: Mou

### Todo
画表格比较繁琐
