.class public Lcom/apk/nd;
.super Ljava/lang/Object;
.source "WebModel.java"


# direct methods
.method public static break(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;
    .locals 11

    .line 1
    invoke-static {p0}, Lcom/apk/nd;->const(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 2
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getType()I

    move-result v2

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_12

    .line 3
    invoke-static {p1, p0}, Lcom/apk/sb0;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/ho0;

    move-result-object p0

    .line 4
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_Content()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/apk/n2;->z(Lcom/apk/jo0;Ljava/lang/String;)Lcom/apk/jo0;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 5
    new-instance v2, Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;

    invoke-direct {v2}, Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;-><init>()V

    .line 6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcom/apk/jo0;->implements()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/apk/n2;->native(Lcom/apk/jo0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 10
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz p0, :cond_5

    .line 11
    invoke-virtual {p0}, Lcom/apk/jo0;->strictfp()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "html"

    if-eqz v7, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/apk/jo0;

    .line 12
    iget-object v9, v7, Lcom/apk/jo0;->new:Lcom/apk/xo0;

    .line 13
    iget-object v9, v9, Lcom/apk/xo0;->if:Ljava/lang/String;

    .line 14
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    .line 15
    :cond_2
    new-instance v7, Lcom/apk/jo0;

    invoke-static {p0}, Lcom/apk/sb0;->d(Lcom/apk/no0;)Lcom/apk/wo0;

    move-result-object p1

    .line 16
    iget-object p1, p1, Lcom/apk/wo0;->if:Lcom/apk/vo0;

    .line 17
    invoke-static {v8, p1}, Lcom/apk/xo0;->do(Ljava/lang/String;Lcom/apk/vo0;)Lcom/apk/xo0;

    move-result-object p1

    invoke-virtual {p0}, Lcom/apk/jo0;->else()Ljava/lang/String;

    move-result-object v8

    .line 18
    invoke-direct {v7, p1, v8, v1}, Lcom/apk/jo0;-><init>(Lcom/apk/xo0;Ljava/lang/String;Lcom/apk/do0;)V

    .line 19
    invoke-virtual {p0, v7}, Lcom/apk/jo0;->abstract(Lcom/apk/no0;)Lcom/apk/jo0;

    .line 20
    :goto_1
    invoke-virtual {v7}, Lcom/apk/jo0;->strictfp()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "head"

    if-eqz v8, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/apk/jo0;

    .line 21
    iget-object v10, v8, Lcom/apk/jo0;->new:Lcom/apk/xo0;

    .line 22
    iget-object v10, v10, Lcom/apk/xo0;->if:Ljava/lang/String;

    .line 23
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    .line 24
    :cond_4
    new-instance v8, Lcom/apk/jo0;

    invoke-static {v7}, Lcom/apk/sb0;->d(Lcom/apk/no0;)Lcom/apk/wo0;

    move-result-object p1

    .line 25
    iget-object p1, p1, Lcom/apk/wo0;->if:Lcom/apk/vo0;

    .line 26
    invoke-static {v9, p1}, Lcom/apk/xo0;->do(Ljava/lang/String;Lcom/apk/vo0;)Lcom/apk/xo0;

    move-result-object p1

    invoke-virtual {v7}, Lcom/apk/jo0;->else()Ljava/lang/String;

    move-result-object v9

    .line 27
    invoke-direct {v8, p1, v9, v1}, Lcom/apk/jo0;-><init>(Lcom/apk/xo0;Ljava/lang/String;Lcom/apk/do0;)V

    .line 28
    invoke-static {v8}, Lcom/apk/sb0;->instanceof(Ljava/lang/Object;)V

    new-array p1, v4, [Lcom/apk/no0;

    aput-object v8, p1, v5

    .line 29
    invoke-virtual {v7, v5, p1}, Lcom/apk/no0;->if(I[Lcom/apk/no0;)V

    .line 30
    :goto_2
    sget-object p1, Lcom/apk/ho0;->const:Lcom/apk/hp0;

    .line 31
    new-instance v7, Lcom/apk/ep0;

    invoke-direct {v7, p1}, Lcom/apk/ep0;-><init>(Lcom/apk/hp0;)V

    .line 32
    invoke-virtual {v7, v8, v8}, Lcom/apk/ep0;->do(Lcom/apk/jo0;Lcom/apk/jo0;)Lcom/apk/jo0;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 33
    invoke-virtual {p1}, Lcom/apk/jo0;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/bo0;->this(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    move-object p1, v3

    .line 34
    :goto_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "_"

    .line 35
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_6
    if-eqz p1, :cond_7

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_7
    move-object p1, v3

    .line 37
    :cond_8
    :goto_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 38
    invoke-virtual {v2, p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;->setName(Ljava/lang/String;)V

    .line 39
    :cond_9
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_PagePre()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/apk/n2;->finally(Lcom/apk/jo0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_PageNext()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/apk/n2;->finally(Lcom/apk/jo0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 41
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_pageNextName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 42
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_pageNextName()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/apk/n2;->native(Lcom/apk/jo0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_a
    move-object v8, v3

    .line 43
    :goto_5
    invoke-virtual {p0}, Lcom/apk/jo0;->else()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Lcom/apk/nd;->if(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 44
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    :goto_6
    const/4 v8, 0x1

    :cond_b
    :goto_7
    if-eqz v8, :cond_f

    .line 45
    :try_start_0
    invoke-static {v7}, Lcom/apk/nd;->while(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 46
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 47
    invoke-static {v9, v7}, Lcom/apk/sb0;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/ho0;

    move-result-object v9

    goto :goto_8

    :cond_c
    move-object v9, v1

    :goto_8
    if-eqz v9, :cond_b

    .line 48
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_Content()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/apk/n2;->z(Lcom/apk/jo0;Ljava/lang/String;)Lcom/apk/jo0;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 49
    invoke-virtual {v10}, Lcom/apk/jo0;->implements()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_PageNext()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/apk/n2;->finally(Lcom/apk/jo0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 51
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_pageNextName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 52
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_pageNextName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/apk/n2;->native(Lcom/apk/jo0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_9

    :cond_d
    move-object v8, v3

    .line 53
    :goto_9
    invoke-virtual {p0}, Lcom/apk/jo0;->else()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Lcom/apk/nd;->if(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 54
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v8, :cond_e

    goto :goto_6

    :catch_0
    move-exception v8

    .line 55
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    const/4 v8, 0x0

    goto :goto_7

    .line 56
    :cond_f
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;->setContent(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :catch_1
    move-exception v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    :goto_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {v7, p2}, Lcom/apk/nd;->do(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 59
    invoke-virtual {v2, p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;->setPreUrl(Ljava/lang/String;)V

    .line 60
    :cond_10
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_11

    invoke-static {v7, p2}, Lcom/apk/nd;->do(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 61
    invoke-virtual {v2, v7}, Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;->setNextUrl(Ljava/lang/String;)V

    .line 62
    :cond_11
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_directory()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 63
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_directory()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/apk/n2;->native(Lcom/apk/jo0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1c

    const-string p2, "http"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1c

    .line 65
    invoke-virtual {p0}, Lcom/apk/jo0;->else()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/apk/n2;->transient(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 66
    invoke-virtual {v2, p0}, Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;->setChapterUrl(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_12
    if-ne v2, v4, :cond_1d

    .line 67
    new-instance v2, Lcom/apk/zm0;

    invoke-direct {v2}, Lcom/apk/zm0;-><init>()V

    .line 68
    invoke-virtual {v2, p1}, Lcom/apk/zm0;->new(Ljava/lang/String;)Lcom/apk/kn0;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 69
    new-instance v2, Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;

    invoke-direct {v2}, Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;-><init>()V

    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_Content()Ljava/lang/String;

    move-result-object v7

    .line 72
    invoke-static {p1, v7}, Lcom/apk/n2;->volatile(Lcom/apk/kn0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 73
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 75
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/apk/n2;->abstract(Lcom/apk/kn0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    :cond_13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 77
    invoke-virtual {v2, v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;->setName(Ljava/lang/String;)V

    .line 78
    :cond_14
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_PagePre()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {p1, v1, p0}, Lcom/apk/n2;->continue(Lcom/apk/kn0;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_PageNext()Ljava/lang/String;

    move-result-object v7

    .line 81
    invoke-static {p1, v7, p0}, Lcom/apk/n2;->continue(Lcom/apk/kn0;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 82
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_pageNextName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_15

    .line 83
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_pageNextName()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/apk/n2;->abstract(Lcom/apk/kn0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_b

    :cond_15
    move-object v8, v3

    .line 84
    :goto_b
    invoke-static {v8, p0, v7}, Lcom/apk/nd;->if(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 85
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_18

    :goto_c
    const/4 v8, 0x1

    :cond_16
    :goto_d
    if-eqz v8, :cond_19

    .line 86
    :try_start_2
    invoke-static {v7}, Lcom/apk/nd;->while(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 87
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_16

    .line 88
    new-instance v8, Lcom/apk/zm0;

    invoke-direct {v8}, Lcom/apk/zm0;-><init>()V

    .line 89
    invoke-virtual {v8, v9}, Lcom/apk/zm0;->new(Ljava/lang/String;)Lcom/apk/kn0;

    move-result-object v8

    .line 90
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_Content()Ljava/lang/String;

    move-result-object v9

    .line 91
    invoke-static {v8, v9}, Lcom/apk/n2;->volatile(Lcom/apk/kn0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 92
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_PageNext()Ljava/lang/String;

    move-result-object v9

    .line 94
    invoke-static {v8, v9, p0}, Lcom/apk/n2;->continue(Lcom/apk/kn0;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 95
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_pageNextName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_17

    .line 96
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_pageNextName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/apk/n2;->abstract(Lcom/apk/kn0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_e

    :cond_17
    move-object v8, v3

    .line 97
    :goto_e
    invoke-static {v8, p0, v7}, Lcom/apk/nd;->if(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 98
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v8, :cond_18

    goto :goto_c

    :catch_2
    move-exception v8

    .line 99
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :cond_18
    const/4 v8, 0x0

    goto :goto_d

    .line 100
    :cond_19
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;->setContent(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_f

    :catch_3
    move-exception v3

    .line 101
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    :goto_f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-static {v7, p2}, Lcom/apk/nd;->do(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 103
    invoke-virtual {v2, v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;->setPreUrl(Ljava/lang/String;)V

    .line 104
    :cond_1a
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-static {v7, p2}, Lcom/apk/nd;->do(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1b

    .line 105
    invoke-virtual {v2, v7}, Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;->setNextUrl(Ljava/lang/String;)V

    .line 106
    :cond_1b
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_directory()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1c

    .line 107
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_directory()Ljava/lang/String;

    move-result-object p2

    .line 108
    invoke-static {p1, p2, p0}, Lcom/apk/n2;->continue(Lcom/apk/kn0;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 109
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 110
    invoke-virtual {v2, p0}, Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;->setChapterUrl(Ljava/lang/String;)V

    :cond_1c
    :goto_10
    move-object v1, v2

    :cond_1d
    return-object v1
.end method

.method public static case(Ljava/lang/String;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->isSearchBook()Z

    move-result p1

    if-nez p1, :cond_3

    .line 2
    invoke-static {p0}, Lcom/apk/nd;->const(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_bookIdExpression()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_pcChapterUrl()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 6
    invoke-static {p0, v0}, Lcom/apk/n2;->extends(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\\d+"

    .line 8
    invoke-static {v0, v1}, Lcom/apk/n2;->extends(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string p0, "{path}"

    .line 10
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string p0, "{id}"

    .line 12
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1

    :cond_3
    return-object p0
.end method

.method public static catch(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    new-instance v2, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-direct {v2}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;-><init>()V

    const-string v3, "wap_"

    .line 2
    invoke-static {v3}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setNovelId(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getChapterUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v2, v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setChapterUrl(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/apk/nd;->const(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_d

    .line 6
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getType()I

    move-result v5

    const-string v6, "\u4f5c\u8005\uff1a"

    if-nez v5, :cond_7

    .line 7
    invoke-static {v0, v1}, Lcom/apk/sb0;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/ho0;

    move-result-object v0

    .line 8
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getInfo_name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/apk/n2;->native(Lcom/apk/jo0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getInfo_image()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/apk/n2;->native(Lcom/apk/jo0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/apk/jo0;->else()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/apk/n2;->transient(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 12
    :cond_1
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getInfo_author()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/apk/n2;->native(Lcom/apk/jo0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 13
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 14
    invoke-virtual {v8, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 15
    :cond_2
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getInfo_desc()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/apk/n2;->native(Lcom/apk/jo0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getInfo_firstChapterUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/apk/n2;->native(Lcom/apk/jo0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 17
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 18
    invoke-virtual {v0}, Lcom/apk/jo0;->else()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/apk/n2;->transient(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 19
    :cond_3
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getInfo_lastChapterName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/apk/n2;->native(Lcom/apk/jo0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 20
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getInfo_lastChapterUrl()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/apk/n2;->native(Lcom/apk/jo0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 21
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 22
    invoke-virtual {v0}, Lcom/apk/jo0;->else()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/apk/n2;->transient(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 23
    :cond_4
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getInfo_lastChapters()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 25
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getInfo_lastChapters()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Lcom/apk/n2;->import(Lcom/apk/jo0;Ljava/lang/String;)Lcom/apk/gp0;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 26
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_6

    .line 27
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/apk/jo0;

    .line 28
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_name()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/apk/n2;->native(Lcom/apk/jo0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 p1, v13

    .line 29
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_url()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lcom/apk/n2;->native(Lcom/apk/jo0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 30
    invoke-virtual {v0}, Lcom/apk/jo0;->else()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/apk/n2;->transient(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 31
    invoke-virtual {v2}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v4

    invoke-virtual {v0}, Lcom/apk/jo0;->else()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4, v15, v13}, Lcom/apk/nd;->for(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v4

    .line 32
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v13, 0x5

    if-lt v4, v13, :cond_5

    goto :goto_1

    :cond_5
    move-object/from16 v13, p1

    move-object/from16 v4, v16

    goto :goto_0

    :cond_6
    move-object/from16 v16, v4

    .line 34
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 35
    invoke-virtual {v2, v5}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setTitle(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v2, v7}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setImg(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v2, v8}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setAuthor(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v2, v6}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setDesc(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2, v9}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setFirstChapterUrl(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v2, v10}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setLastChapterName(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v2, v11}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setLastChapterUrl(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v2, v12}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setLastList(Ljava/util/List;)V

    goto/16 :goto_6

    :cond_7
    move-object/from16 v16, v4

    const/4 v4, 0x1

    if-ne v5, v4, :cond_c

    .line 43
    new-instance v4, Lcom/apk/zm0;

    invoke-direct {v4}, Lcom/apk/zm0;-><init>()V

    invoke-virtual {v4, v0}, Lcom/apk/zm0;->new(Ljava/lang/String;)Lcom/apk/kn0;

    move-result-object v4

    .line 44
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getInfo_name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/apk/n2;->abstract(Lcom/apk/kn0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 45
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getInfo_image()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v7, "src"

    .line 46
    invoke-static {v4, v0, v7}, Lcom/apk/n2;->private(Lcom/apk/kn0;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 48
    invoke-static {v0, v1}, Lcom/apk/n2;->transient(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 50
    :cond_8
    :goto_2
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getInfo_author()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/apk/n2;->abstract(Lcom/apk/kn0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 51
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    move-object/from16 v8, v16

    .line 52
    invoke-virtual {v7, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_9
    move-object/from16 v8, v16

    .line 53
    :goto_3
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getInfo_desc()Ljava/lang/String;

    move-result-object v6

    .line 54
    invoke-static {v4, v6}, Lcom/apk/n2;->volatile(Lcom/apk/kn0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 55
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getInfo_firstChapterUrl()Ljava/lang/String;

    move-result-object v9

    .line 56
    invoke-static {v4, v9, v1}, Lcom/apk/n2;->continue(Lcom/apk/kn0;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 57
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getInfo_lastChapterName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/apk/n2;->abstract(Lcom/apk/kn0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 58
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getInfo_lastChapterUrl()Ljava/lang/String;

    move-result-object v11

    .line 59
    invoke-static {v4, v11, v1}, Lcom/apk/n2;->continue(Lcom/apk/kn0;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 60
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getInfo_lastChapters()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 62
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getInfo_lastChapters()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Lcom/apk/n2;->interface(Lcom/apk/kn0;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 63
    array-length v13, v4

    if-lez v13, :cond_b

    .line 64
    array-length v13, v4

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_b

    aget-object v15, v4, v14

    .line 65
    check-cast v15, Lcom/apk/kn0;

    move-object/from16 p1, v4

    .line 66
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Lcom/apk/n2;->abstract(Lcom/apk/kn0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move/from16 v16, v13

    .line 67
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_url()Ljava/lang/String;

    move-result-object v13

    invoke-static {v15, v13, v1}, Lcom/apk/n2;->continue(Lcom/apk/kn0;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 68
    invoke-virtual {v2}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v1, v4, v13}, Lcom/apk/nd;->for(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v4

    .line 69
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v13, 0x5

    if-lt v4, v13, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, p1

    move/from16 v13, v16

    goto :goto_4

    .line 71
    :cond_b
    :goto_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 72
    invoke-virtual {v2, v5}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setTitle(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v2, v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setImg(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2, v7}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setAuthor(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v2, v6}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setDesc(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v2, v9}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setFirstChapterUrl(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v2, v10}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setLastChapterName(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v2, v11}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setLastChapterUrl(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v2, v12}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setLastList(Ljava/util/List;)V

    goto :goto_7

    :cond_c
    :goto_6
    move-object/from16 v8, v16

    goto :goto_7

    :cond_d
    move-object v8, v4

    .line 80
    :cond_e
    :goto_7
    invoke-static {v1, v2}, Lcom/apk/nd;->goto(Ljava/lang/String;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 81
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setChapterUrl(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v2}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getFirstChapterUrl()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {v2}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->isSearchBook()Z

    move-result v1

    if-nez v1, :cond_13

    .line 84
    invoke-static {v0}, Lcom/apk/nd;->const(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 85
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_bookIdRegex()Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_chapterIdRegex()Ljava/lang/String;

    move-result-object v4

    .line 87
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_pcContentUrl()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 89
    invoke-static {v0, v3}, Lcom/apk/n2;->extends(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "\\d+"

    if-nez v5, :cond_f

    .line 91
    invoke-static {v3, v6}, Lcom/apk/n2;->extends(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    :cond_f
    invoke-static {v0, v4}, Lcom/apk/n2;->extends(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 94
    invoke-static {v4, v6}, Lcom/apk/n2;->extends(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    :cond_10
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v0, "{path}"

    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_11
    const-string v0, "{id}"

    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 99
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_12
    move-object v0, v1

    :goto_8
    const-string v1, "{cid}"

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 101
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_13
    invoke-virtual {v2, v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setFirstChapterUrl(Ljava/lang/String;)V

    :cond_14
    return-object v2
.end method

.method public static class(Ljava/lang/String;)Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SP_READ_WEBSITEBEAN_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/apk/ze;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p0, v0}, Lcom/biquge/ebook/app/helper/req/convert/Convert;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    :goto_0
    check-cast v1, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    :cond_1
    return-object v1
.end method

.method public static const(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;
    .locals 10

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/apk/da;->else()Lcom/apk/da;

    move-result-object v0

    invoke-static {p0}, Lcom/apk/n2;->while(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_7

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v2, "https"

    const-string v3, ""

    .line 4
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v4, "http"

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 5
    iget-object v5, v0, Lcom/apk/da;->if:Lcom/apk/gg;

    if-eqz v5, :cond_2

    .line 6
    invoke-virtual {v5, p0}, Lcom/apk/gg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;

    :cond_2
    if-nez v1, :cond_6

    .line 7
    const-class v5, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;

    const/4 v6, 0x0

    new-array v7, v6, [J

    invoke-static {v5, v7}, Lorg/litepal/LitePal;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v5

    .line 8
    invoke-virtual {v0, v5}, Lcom/apk/da;->catch(Ljava/util/List;)V

    .line 9
    iget-object v5, v0, Lcom/apk/da;->if:Lcom/apk/gg;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/apk/gg;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 10
    :cond_3
    invoke-static {}, Lcom/apk/m0;->new()V

    .line 11
    :cond_4
    iget-object v5, v0, Lcom/apk/da;->if:Lcom/apk/gg;

    if-eqz v5, :cond_6

    .line 12
    invoke-virtual {v5, p0}, Lcom/apk/gg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;

    if-nez v1, :cond_6

    const-string v5, "."

    .line 13
    invoke-static {p0, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v7

    invoke-static {p0, v6, v7}, Lcom/apk/ze;->h0(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 14
    iget-object v0, v0, Lcom/apk/da;->if:Lcom/apk/gg;

    invoke-virtual {v0}, Lcom/apk/gg;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;

    .line 16
    invoke-virtual {v7}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getBaseUrl()Ljava/lang/String;

    move-result-object v8

    .line 17
    invoke-virtual {v8, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 18
    invoke-virtual {v8, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 19
    invoke-virtual {v8, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v6, v9}, Lcom/apk/ze;->h0(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v8

    .line 20
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v1, v7

    :cond_6
    :goto_0
    return-object v1

    .line 21
    :cond_7
    throw v1
.end method

.method public static do(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 2
    invoke-static {p0}, Lcom/apk/nd;->const(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_urlExpression()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/apk/n2;->goto(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, p1

    :goto_1
    return v1
.end method

.method public static else(Ljava/lang/String;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->isSearchBook()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2
    invoke-static {p0}, Lcom/apk/nd;->const(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_bookIdRegex()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_chapterIdRegex()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_pcContentUrl()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 7
    invoke-static {p0, v1}, Lcom/apk/n2;->extends(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "\\d+"

    if-nez v3, :cond_0

    .line 9
    invoke-static {v1, v4}, Lcom/apk/n2;->extends(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    :cond_0
    invoke-static {p0, v2}, Lcom/apk/n2;->extends(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 12
    invoke-static {p0, v4}, Lcom/apk/n2;->extends(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 13
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "{path}"

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v2, "{id}"

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 17
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v1, "{cid}"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 19
    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 20
    :cond_4
    :try_start_0
    invoke-static {v0}, Lcom/apk/nd;->while(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 21
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 22
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getChapterUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/apk/nd;->break(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final(Lorg/json/JSONArray;)Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;
    .locals 14

    .line 1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "et"

    .line 5
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setType(I)V

    const-string v3, "rt"

    .line 6
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    .line 7
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "pu"

    const-string v6, "p"

    const-string v7, "t"

    const-string v8, "ue"

    const-string v9, "n"

    const-string v10, "rs"

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "l"

    .line 9
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "lk"

    .line 11
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 12
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 14
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "bl"

    .line 15
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "bn"

    .line 16
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 17
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v12, "bu"

    .line 18
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "ie"

    .line 19
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-virtual {v0, v3}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setChapter_list(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, v4}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setChapter_name(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v7}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setChapter_url(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, v6}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setChapter_prePage(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, v9}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setChapter_nextPage(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, v8}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setChapter_urlExpression(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, v10}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setChapter_batch_list(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v11}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setChapter_batch_list_name(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, v5}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setChapter_pcChapterUrl(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setChapter_bookIdExpression(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, v12}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setChapter_batch_list_url(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const-string v4, "2"

    .line 31
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v11, "d"

    if-eqz v4, :cond_1

    .line 32
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "c"

    .line 33
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 35
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 36
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 37
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 38
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "pp"

    .line 39
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "pn"

    .line 40
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "id"

    .line 41
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "cr"

    .line 42
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 43
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {v0, v7}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setContent_name(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, v3}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setContent_Content(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, v4}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setContent_PagePre(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, v6}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setContent_PageNext(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, v9}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setContent_directory(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, v8}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setContent_urlExpression(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, v10}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setContent_pagePreName(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v11}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setContent_pageNextName(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, v12}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setContent_bookIdRegex(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, v13}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setContent_chapterIdRegex(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setContent_pcContentUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v4, "3"

    .line 55
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 56
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 57
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "m"

    .line 58
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "a"

    .line 59
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 60
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "lc"

    .line 61
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "fu"

    .line 62
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "lu"

    .line 63
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "ln"

    .line 64
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 65
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {v0, v3}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setInfo_name(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, v4}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setInfo_image(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, v5}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setInfo_author(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, v6}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setInfo_desc(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v7}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setInfo_lastChapters(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, v9}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setInfo_firstChapterUrl(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, v11}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setInfo_lastChapterName(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, v10}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setInfo_lastChapterUrl(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setInfo_urlExpression(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    return-object v0
.end method

.method public static for(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;
    .locals 1

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/bean/ChapterBean;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/ChapterBean;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/bean/ChapterBean;->setNovelId(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/biquge/ebook/app/bean/ChapterBean;->setName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p3}, Lcom/biquge/ebook/app/bean/ChapterBean;->setUrl(Ljava/lang/String;)V

    .line 5
    invoke-static {p0, p3}, Lcom/apk/nd;->new(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/bean/ChapterBean;->setOid(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 6
    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/bean/ChapterBean;->setHasContent(Z)V

    .line 7
    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/bean/ChapterBean;->setWebSite(Z)V

    .line 8
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->setWebChapterUrl(Ljava/lang/String;)V

    return-object v0
.end method

.method public static goto(Ljava/lang/String;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;
    .locals 3

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->isSearchBook()Z

    move-result p1

    if-nez p1, :cond_4

    .line 2
    invoke-static {p0}, Lcom/apk/nd;->const(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_bookIdExpression()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_pcChapterUrl()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 6
    invoke-static {p0, v0}, Lcom/apk/n2;->extends(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\\d+"

    .line 8
    invoke-static {p0, v0}, Lcom/apk/n2;->extends(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 9
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "{path}"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, "{id}"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 14
    :cond_2
    invoke-static {p1}, Lcom/apk/nd;->const(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 15
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setBaseUrl(Ljava/lang/String;)V

    :cond_3
    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static if(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "\u4e0b\u4e00\u9875"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "."

    .line 4
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, p0

    :cond_1
    :goto_0
    return v1
.end method

.method public static import(Ljava/lang/String;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/biquge/ebook/app/helper/req/convert/Convert;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SP_READ_WEBSITEBEAN_KEY"

    .line 2
    invoke-static {v0, p0}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static native(Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)Lcom/biquge/ebook/app/bean/Book;
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/bean/Book;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/Book;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/Book;->setId(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/Book;->setName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/Book;->setImg(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/Book;->setAuthor(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/Book;->setDesc(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getChapterUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apk/nd;->new(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/Book;->setFirstChapterId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getLastChapterUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/Book;->setLastChapterId(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/Book;->setWebSite(Z)V

    .line 10
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getChapterUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/Book;->setChapterUrl(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getLastChapterUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/Book;->setLastChapterId(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getLastChapterName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/bean/Book;->setLastChapter(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static new(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "_"

    .line 1
    invoke-static {p0, v0}, Lcom/apk/goto;->while(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static super(Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p3, p0}, Lcom/apk/nd;->else(Ljava/lang/String;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {p3}, Lcom/apk/nd;->while(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getChapterUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v2, v1}, Lcom/apk/nd;->break(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;->getPreUrl()Ljava/lang/String;

    move-result-object p3

    .line 6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    invoke-static {p1, p3}, Lcom/apk/nd;->new(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 8
    :goto_0
    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;->getNextUrl()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 10
    invoke-static {p1, v3}, Lcom/apk/nd;->new(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v0

    .line 11
    :goto_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v6, "status"

    const/4 v7, 0x1

    .line 12
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "info"

    const-string v8, "success"

    .line 13
    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "id"

    .line 15
    invoke-virtual {v6, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "name"

    .line 16
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "cid"

    .line 17
    invoke-virtual {v6, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "cname"

    .line 18
    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "pre_url"

    .line 19
    invoke-virtual {v6, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "pid"

    .line 20
    invoke-virtual {v6, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "next_url"

    .line 21
    invoke-virtual {v6, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "nid"

    .line 22
    invoke-virtual {v6, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "content"

    .line 23
    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "hasContent"

    .line 24
    invoke-virtual {v6, p0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "data"

    .line 25
    invoke-virtual {v5, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 26
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-object v0
.end method

.method public static this(Ljava/lang/String;Ljava/lang/String;Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 1
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_f

    .line 2
    invoke-virtual/range {p2 .. p2}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getType()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v6, "novelId = ? and url = ?"

    const-string v8, "novelId = ?"

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-nez v5, :cond_9

    .line 3
    :try_start_1
    invoke-static {v1, v0}, Lcom/apk/sb0;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/apk/ho0;

    move-result-object v1

    .line 4
    invoke-virtual/range {p2 .. p2}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_list()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/apk/n2;->import(Lcom/apk/jo0;Ljava/lang/String;)Lcom/apk/gp0;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_f

    .line 6
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/apk/jo0;

    .line 8
    invoke-virtual/range {p2 .. p2}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_name()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/apk/n2;->native(Lcom/apk/jo0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 9
    invoke-virtual/range {p2 .. p2}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_url()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/apk/n2;->native(Lcom/apk/jo0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 10
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 11
    invoke-virtual {v1}, Lcom/apk/jo0;->else()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/apk/n2;->transient(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 12
    :cond_0
    invoke-static {v4, v0, v14, v13}, Lcom/apk/nd;->for(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v13

    .line 13
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {v12}, Lcom/apk/nd;->throw(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 15
    new-instance v12, Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;

    invoke-direct {v12}, Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 16
    :try_start_2
    invoke-virtual {v12, v4}, Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;->setNovelId(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v12, v0}, Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;->setUrl(Ljava/lang/String;)V

    .line 18
    invoke-virtual/range {p2 .. p2}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_prePage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 19
    invoke-virtual/range {p2 .. p2}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_prePage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v13}, Lcom/apk/n2;->native(Lcom/apk/jo0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 20
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 21
    invoke-virtual {v1}, Lcom/apk/jo0;->else()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/apk/n2;->transient(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 22
    invoke-virtual {v12, v13}, Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;->setPreUrl(Ljava/lang/String;)V

    .line 23
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_nextPage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 24
    invoke-virtual/range {p2 .. p2}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_nextPage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v13}, Lcom/apk/n2;->native(Lcom/apk/jo0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 25
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 26
    invoke-virtual {v1}, Lcom/apk/jo0;->else()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/apk/n2;->transient(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 27
    invoke-virtual {v12, v13}, Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;->setNextUrl(Ljava/lang/String;)V

    .line 28
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_batch_list()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 29
    invoke-virtual/range {p2 .. p2}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_batch_list()Ljava/lang/String;

    move-result-object v13

    if-eqz v1, :cond_4

    .line 30
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 31
    invoke-virtual {v1, v13}, Lcom/apk/jo0;->c(Ljava/lang/String;)Lcom/apk/gp0;

    move-result-object v3

    :cond_4
    if-eqz v3, :cond_8

    .line 32
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_8

    .line 33
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 34
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_7

    .line 35
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/apk/jo0;

    if-eqz v15, :cond_6

    .line 36
    invoke-virtual/range {p2 .. p2}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_batch_list_name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Lcom/apk/n2;->native(Lcom/apk/jo0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 37
    invoke-virtual/range {p2 .. p2}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_batch_list_url()Ljava/lang/String;

    move-result-object v11

    invoke-static {v15, v11}, Lcom/apk/n2;->native(Lcom/apk/jo0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 38
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 39
    invoke-virtual {v1}, Lcom/apk/jo0;->else()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v15}, Lcom/apk/n2;->transient(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 40
    :cond_5
    new-instance v15, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;

    invoke-direct {v15}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;-><init>()V

    .line 41
    invoke-virtual {v15, v7}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;->setName(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v15, v11}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;->setUrl(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 44
    :cond_7
    invoke-virtual {v2, v13}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setBatchOptionList(Ljava/util/List;)V

    .line 45
    :cond_8
    invoke-static {v4}, Lcom/apk/da;->package(Ljava/lang/String;)V

    .line 46
    const-class v1, Lcom/biquge/ebook/app/bean/ChapterBean;

    new-array v2, v9, [Ljava/lang/String;

    aput-object v8, v2, v10

    const/4 v3, 0x1

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 47
    invoke-static {v5}, Lorg/litepal/LitePal;->saveAll(Ljava/util/Collection;)Z

    .line 48
    const-class v1, Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    aput-object v6, v2, v10

    const/4 v3, 0x1

    aput-object v4, v2, v3

    aput-object v0, v2, v9

    invoke-static {v1, v2}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 49
    invoke-virtual {v12}, Lorg/litepal/crud/LitePalSupport;->save()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v12

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v3, v12

    goto/16 :goto_4

    :cond_9
    const/4 v7, 0x1

    if-ne v5, v7, :cond_f

    .line 50
    :try_start_3
    new-instance v5, Lcom/apk/zm0;

    invoke-direct {v5}, Lcom/apk/zm0;-><init>()V

    .line 51
    invoke-virtual {v5, v1}, Lcom/apk/zm0;->new(Ljava/lang/String;)Lcom/apk/kn0;

    move-result-object v1

    .line 52
    invoke-virtual/range {p2 .. p2}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_list()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/apk/n2;->interface(Lcom/apk/kn0;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 53
    array-length v7, v5

    if-lez v7, :cond_f

    .line 54
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 55
    array-length v11, v5

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_a

    aget-object v13, v5, v12

    .line 56
    check-cast v13, Lcom/apk/kn0;

    .line 57
    invoke-virtual/range {p2 .. p2}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_name()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/apk/n2;->abstract(Lcom/apk/kn0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 58
    invoke-virtual/range {p2 .. p2}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_url()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15, v0}, Lcom/apk/n2;->continue(Lcom/apk/kn0;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 59
    invoke-static {v4, v0, v14, v13}, Lcom/apk/nd;->for(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v13

    .line 60
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 61
    :cond_a
    invoke-static {v7}, Lcom/apk/nd;->throw(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 62
    new-instance v7, Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;

    invoke-direct {v7}, Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 63
    :try_start_4
    invoke-virtual {v7, v4}, Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;->setNovelId(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v7, v0}, Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;->setUrl(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_prePage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 66
    invoke-virtual/range {p2 .. p2}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_prePage()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-static {v1, v3, v0}, Lcom/apk/n2;->continue(Lcom/apk/kn0;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 69
    invoke-virtual {v7, v3}, Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;->setPreUrl(Ljava/lang/String;)V

    .line 70
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_nextPage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 71
    invoke-virtual/range {p2 .. p2}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_nextPage()Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-static {v1, v3, v0}, Lcom/apk/n2;->continue(Lcom/apk/kn0;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 74
    invoke-virtual {v7, v3}, Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;->setNextUrl(Ljava/lang/String;)V

    .line 75
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_batch_list()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 76
    invoke-virtual/range {p2 .. p2}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_batch_list()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/apk/n2;->interface(Lcom/apk/kn0;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 77
    array-length v3, v1

    if-lez v3, :cond_e

    .line 78
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 79
    array-length v11, v1

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_d

    aget-object v13, v1, v12

    .line 80
    check-cast v13, Lcom/apk/kn0;

    .line 81
    invoke-virtual/range {p2 .. p2}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_batch_list_name()Ljava/lang/String;

    move-result-object v14

    .line 82
    invoke-static {v13, v14}, Lcom/apk/n2;->abstract(Lcom/apk/kn0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 83
    invoke-virtual/range {p2 .. p2}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_batch_list_url()Ljava/lang/String;

    move-result-object v15

    .line 84
    invoke-virtual/range {p2 .. p2}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getChapter_batch_list_url()Ljava/lang/String;

    move-result-object v10

    .line 85
    invoke-static {v13, v15, v10, v0}, Lcom/apk/n2;->strictfp(Lcom/apk/kn0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 86
    new-instance v13, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;

    invoke-direct {v13}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;-><init>()V

    .line 87
    invoke-virtual {v13, v14}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;->setName(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v13, v10}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;->setUrl(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x0

    goto :goto_3

    .line 90
    :cond_d
    invoke-virtual {v2, v3}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setBatchOptionList(Ljava/util/List;)V

    .line 91
    :cond_e
    invoke-static {v4}, Lcom/apk/da;->package(Ljava/lang/String;)V

    .line 92
    const-class v1, Lcom/biquge/ebook/app/bean/ChapterBean;

    new-array v2, v9, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 93
    invoke-static {v5}, Lorg/litepal/LitePal;->saveAll(Ljava/util/Collection;)Z

    .line 94
    const-class v1, Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    aput-object v4, v2, v3

    aput-object v0, v2, v9

    invoke-static {v1, v2}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 95
    invoke-virtual {v7}, Lorg/litepal/crud/LitePalSupport;->save()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v3, v7

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v3, v7

    goto :goto_4

    :catch_2
    move-exception v0

    .line 96
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_5
    return-object v3
.end method

.method public static throw(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/ChapterBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/ChapterBean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biquge/ebook/app/bean/ChapterBean;

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biquge/ebook/app/bean/ChapterBean;

    .line 4
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v1, "-1"

    if-lez v0, :cond_3

    .line 8
    :try_start_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v1

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biquge/ebook/app/bean/ChapterBean;

    .line 9
    invoke-virtual {v3, v2}, Lcom/biquge/ebook/app/bean/ChapterBean;->setPid(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 11
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/ChapterBean;

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/ChapterBean;->setPid(Ljava/lang/String;)V

    .line 12
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 13
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/ChapterBean;

    .line 15
    invoke-virtual {v2, v1}, Lcom/biquge/ebook/app/bean/ChapterBean;->setNid(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 17
    :cond_4
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_4
    return-object p0
.end method

.method public static try(Ljava/lang/String;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/ChapterBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "webChapterUrl = ?"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 1
    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p0

    const-class v0, Lcom/biquge/ebook/app/bean/ChapterBean;

    invoke-virtual {p0, v0}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/ChapterBean;

    .line 3
    invoke-static {v0}, Lcom/apk/g2;->while(Lcom/biquge/ebook/app/bean/ChapterBean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/ChapterBean;->setCache(Z)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static while(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/apk/xw;->case:Lcom/apk/xw;

    .line 2
    new-instance v1, Lcom/apk/ky;

    invoke-direct {v1, p0}, Lcom/apk/ky;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lcom/apk/x4;->final(Ljava/lang/String;)Lcom/apk/fy;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/apk/qy;->catch(Lcom/apk/fy;)Lcom/apk/qy;

    const-wide/32 v2, 0x2bf20

    .line 4
    iput-wide v2, v1, Lcom/apk/qy;->goto:J

    .line 5
    iput-object v0, v1, Lcom/apk/qy;->case:Lcom/apk/xw;

    .line 6
    new-instance p0, Lcom/apk/ox;

    invoke-direct {p0}, Lcom/apk/ox;-><init>()V

    .line 7
    iput-object p0, v1, Lcom/apk/qy;->final:Lcom/apk/nx;

    .line 8
    invoke-virtual {v1}, Lcom/apk/qy;->try()Lcom/apk/iy;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/apk/iy;->for()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 11
    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
