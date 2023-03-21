.class public Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;
.super Lorg/litepal/crud/LitePalSupport;
.source "WebSiteRulesBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = -0x2674f19af20395b5L


# instance fields
.field public baseUrl:Ljava/lang/String;

.field public chapter_batch_list:Ljava/lang/String;

.field public chapter_batch_list_name:Ljava/lang/String;

.field public chapter_batch_list_url:Ljava/lang/String;

.field public chapter_bookIdExpression:Ljava/lang/String;

.field public chapter_list:Ljava/lang/String;

.field public chapter_name:Ljava/lang/String;

.field public chapter_nextPage:Ljava/lang/String;

.field public chapter_pcChapterUrl:Ljava/lang/String;

.field public chapter_prePage:Ljava/lang/String;

.field public chapter_url:Ljava/lang/String;

.field public chapter_urlExpression:Ljava/lang/String;

.field public content_Content:Ljava/lang/String;

.field public content_PageNext:Ljava/lang/String;

.field public content_PagePre:Ljava/lang/String;

.field public content_bookIdRegex:Ljava/lang/String;

.field public content_chapterIdRegex:Ljava/lang/String;

.field public content_directory:Ljava/lang/String;

.field public content_name:Ljava/lang/String;

.field public content_pageNextName:Ljava/lang/String;

.field public content_pagePreName:Ljava/lang/String;

.field public content_pcContentUrl:Ljava/lang/String;

.field public content_urlExpression:Ljava/lang/String;

.field public info_author:Ljava/lang/String;

.field public info_desc:Ljava/lang/String;

.field public info_firstChapterUrl:Ljava/lang/String;

.field public info_image:Ljava/lang/String;

.field public info_lastChapterName:Ljava/lang/String;

.field public info_lastChapterUrl:Ljava/lang/String;

.field public info_lastChapters:Ljava/lang/String;

.field public info_name:Ljava/lang/String;

.field public info_urlExpression:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->baseUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getChapter_batch_list()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->chapter_batch_list:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getChapter_batch_list_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->chapter_batch_list_name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getChapter_batch_list_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->chapter_batch_list_url:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getChapter_bookIdExpression()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->chapter_bookIdExpression:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getChapter_list()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->chapter_list:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getChapter_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->chapter_name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getChapter_nextPage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->chapter_nextPage:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getChapter_pcChapterUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->chapter_pcChapterUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getChapter_prePage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->chapter_prePage:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getChapter_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->chapter_url:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getChapter_urlExpression()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->chapter_urlExpression:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getContent_Content()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->content_Content:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getContent_PageNext()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->content_PageNext:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getContent_PagePre()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->content_PagePre:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getContent_bookIdRegex()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->content_bookIdRegex:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getContent_chapterIdRegex()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->content_chapterIdRegex:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getContent_directory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->content_directory:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getContent_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->content_name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getContent_pageNextName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->content_pageNextName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getContent_pagePreName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->content_pagePreName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getContent_pcContentUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->content_pcContentUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getContent_urlExpression()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->content_urlExpression:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getInfo_author()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->info_author:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getInfo_desc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->info_desc:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getInfo_firstChapterUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->info_firstChapterUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getInfo_image()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->info_image:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getInfo_lastChapterName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->info_lastChapterName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getInfo_lastChapterUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->info_lastChapterUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getInfo_lastChapters()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->info_lastChapters:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getInfo_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->info_name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getInfo_urlExpression()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->info_urlExpression:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->type:I

    return v0
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->baseUrl:Ljava/lang/String;

    return-void
.end method

.method public setChapter_batch_list(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->chapter_batch_list:Ljava/lang/String;

    return-void
.end method

.method public setChapter_batch_list_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->chapter_batch_list_name:Ljava/lang/String;

    return-void
.end method

.method public setChapter_batch_list_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->chapter_batch_list_url:Ljava/lang/String;

    return-void
.end method

.method public setChapter_bookIdExpression(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->chapter_bookIdExpression:Ljava/lang/String;

    return-void
.end method

.method public setChapter_list(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->chapter_list:Ljava/lang/String;

    return-void
.end method

.method public setChapter_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->chapter_name:Ljava/lang/String;

    return-void
.end method

.method public setChapter_nextPage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->chapter_nextPage:Ljava/lang/String;

    return-void
.end method

.method public setChapter_pcChapterUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->chapter_pcChapterUrl:Ljava/lang/String;

    return-void
.end method

.method public setChapter_prePage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->chapter_prePage:Ljava/lang/String;

    return-void
.end method

.method public setChapter_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->chapter_url:Ljava/lang/String;

    return-void
.end method

.method public setChapter_urlExpression(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->chapter_urlExpression:Ljava/lang/String;

    return-void
.end method

.method public setContent_Content(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->content_Content:Ljava/lang/String;

    return-void
.end method

.method public setContent_PageNext(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->content_PageNext:Ljava/lang/String;

    return-void
.end method

.method public setContent_PagePre(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->content_PagePre:Ljava/lang/String;

    return-void
.end method

.method public setContent_bookIdRegex(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->content_bookIdRegex:Ljava/lang/String;

    return-void
.end method

.method public setContent_chapterIdRegex(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->content_chapterIdRegex:Ljava/lang/String;

    return-void
.end method

.method public setContent_directory(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->content_directory:Ljava/lang/String;

    return-void
.end method

.method public setContent_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->content_name:Ljava/lang/String;

    return-void
.end method

.method public setContent_pageNextName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->content_pageNextName:Ljava/lang/String;

    return-void
.end method

.method public setContent_pagePreName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->content_pagePreName:Ljava/lang/String;

    return-void
.end method

.method public setContent_pcContentUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->content_pcContentUrl:Ljava/lang/String;

    return-void
.end method

.method public setContent_urlExpression(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->content_urlExpression:Ljava/lang/String;

    return-void
.end method

.method public setInfo_author(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->info_author:Ljava/lang/String;

    return-void
.end method

.method public setInfo_desc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->info_desc:Ljava/lang/String;

    return-void
.end method

.method public setInfo_firstChapterUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->info_firstChapterUrl:Ljava/lang/String;

    return-void
.end method

.method public setInfo_image(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->info_image:Ljava/lang/String;

    return-void
.end method

.method public setInfo_lastChapterName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->info_lastChapterName:Ljava/lang/String;

    return-void
.end method

.method public setInfo_lastChapterUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->info_lastChapterUrl:Ljava/lang/String;

    return-void
.end method

.method public setInfo_lastChapters(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->info_lastChapters:Ljava/lang/String;

    return-void
.end method

.method public setInfo_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->info_name:Ljava/lang/String;

    return-void
.end method

.method public setInfo_urlExpression(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->info_urlExpression:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->type:I

    return-void
.end method
