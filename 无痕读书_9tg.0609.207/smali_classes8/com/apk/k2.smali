.class public Lcom/apk/k2;
.super Ljava/lang/Object;
.source "BookReadPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/apk/h2;


# direct methods
.method public constructor <init>(Lcom/apk/h2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/k2;->do:Lcom/apk/h2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    invoke-static {}, Lcom/apk/eg;->implements()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2
    iget-object v0, p0, Lcom/apk/k2;->do:Lcom/apk/h2;

    invoke-virtual {v0}, Lcom/apk/h2;->public()Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 3
    iget-object v1, p0, Lcom/apk/k2;->do:Lcom/apk/h2;

    invoke-virtual {v1}, Lcom/apk/h2;->static()Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 4
    iget-object v2, p0, Lcom/apk/k2;->do:Lcom/apk/h2;

    .line 5
    iget-boolean v3, v2, Lcom/apk/h2;->y:Z

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_1

    .line 6
    iget-boolean v2, v2, Lcom/apk/h2;->e:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v0

    if-ne v0, v4, :cond_2

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v0

    rem-int/2addr v0, v4

    if-nez v0, :cond_2

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_8

    .line 9
    iget-object v0, p0, Lcom/apk/k2;->do:Lcom/apk/h2;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getNid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apk/h2;->for(Lcom/apk/h2;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 10
    iget-object v1, p0, Lcom/apk/k2;->do:Lcom/apk/h2;

    .line 11
    iget-object v1, v1, Lcom/apk/h2;->b:Lcom/apk/gg;

    .line 12
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apk/gg;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 13
    iget-object v1, p0, Lcom/apk/k2;->do:Lcom/apk/h2;

    .line 14
    iget-object v1, v1, Lcom/apk/h2;->b:Lcom/apk/gg;

    .line 15
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/apk/gg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v1, p0, Lcom/apk/k2;->do:Lcom/apk/h2;

    if-eqz v1, :cond_7

    .line 17
    iget-object v2, v1, Lcom/apk/h2;->this:Lcom/apk/g2;

    if-eqz v2, :cond_8

    .line 18
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ChapterBean;->getName()Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "-2"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "-1"

    .line 21
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :cond_4
    :goto_3
    if-nez v5, :cond_8

    .line 22
    invoke-virtual {v1}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object v4

    .line 23
    invoke-virtual {v1, v4, v2}, Lcom/apk/h2;->native(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v4

    invoke-virtual {v1, v4, v6}, Lcom/apk/h2;->volatile(Lcom/biquge/ebook/app/bean/ChapterBean;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 24
    invoke-virtual {v1}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object v7

    .line 25
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ChapterBean;->getUrl()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 26
    invoke-virtual {v1}, Lcom/apk/h2;->finally()Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    move-result-object v11

    const/4 v12, 0x1

    move-object v8, v2

    .line 27
    invoke-static/range {v7 .. v12}, Lcom/apk/n2;->super(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 28
    iget-object v7, v1, Lcom/apk/h2;->this:Lcom/apk/g2;

    invoke-virtual {v1}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object v8

    iget v11, v1, Lcom/apk/h2;->import:F

    iget v12, v1, Lcom/apk/h2;->native:F

    move-object v9, v2

    move-object v10, v3

    invoke-virtual/range {v7 .. v12}, Lcom/apk/g2;->throw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    goto :goto_4

    .line 29
    :cond_5
    iget-object v0, v1, Lcom/apk/h2;->this:Lcom/apk/g2;

    invoke-virtual {v0, v2}, Lcom/apk/g2;->for(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 31
    :cond_6
    iget-object v7, v1, Lcom/apk/h2;->this:Lcom/apk/g2;

    invoke-virtual {v1}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object v8

    iget v11, v1, Lcom/apk/h2;->import:F

    iget v12, v1, Lcom/apk/h2;->native:F

    move-object v9, v2

    move-object v10, v3

    invoke-virtual/range {v7 .. v12}, Lcom/apk/g2;->throw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    .line 32
    throw v0

    :cond_8
    :goto_4
    return-void
.end method
