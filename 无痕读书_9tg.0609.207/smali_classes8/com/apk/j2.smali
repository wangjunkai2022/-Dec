.class public Lcom/apk/j2;
.super Ljava/lang/Object;
.source "BookReadPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Lcom/apk/h2;


# direct methods
.method public constructor <init>(Lcom/apk/h2;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/j2;->if:Lcom/apk/h2;

    iput-object p2, p0, Lcom/apk/j2;->do:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/apk/j2;->if:Lcom/apk/h2;

    .line 2
    iget-object v2, v2, Lcom/apk/qz;->do:Lcom/apk/rz;

    .line 3
    check-cast v2, Lcom/apk/l2;

    invoke-interface {v2, v0, v1}, Lcom/apk/l2;->do(ZZ)V

    .line 4
    iget-object v2, p0, Lcom/apk/j2;->if:Lcom/apk/h2;

    invoke-virtual {v2}, Lcom/apk/h2;->static()Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5
    iget-object v3, p0, Lcom/apk/j2;->if:Lcom/apk/h2;

    .line 6
    iget-object v3, v3, Lcom/apk/h2;->strictfp:Ljava/util/Map;

    .line 7
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v3

    iget-object v4, p0, Lcom/apk/j2;->if:Lcom/apk/h2;

    invoke-virtual {v4}, Lcom/apk/h2;->super()Ljava/lang/String;

    iget-object v4, p0, Lcom/apk/j2;->if:Lcom/apk/h2;

    invoke-virtual {v4}, Lcom/apk/h2;->while()Ljava/lang/String;

    iget-object v4, p0, Lcom/apk/j2;->if:Lcom/apk/h2;

    .line 9
    iget-object v4, v4, Lcom/apk/h2;->case:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 10
    throw v2

    .line 11
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/apk/j2;->if:Lcom/apk/h2;

    invoke-virtual {v3}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/apk/j2;->do:Ljava/lang/String;

    .line 12
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/ChapterBean;->getUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/apk/j2;->if:Lcom/apk/h2;

    .line 13
    invoke-virtual {v2}, Lcom/apk/h2;->finally()Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    move-result-object v8

    const/4 v9, 0x1

    .line 14
    invoke-static/range {v4 .. v9}, Lcom/apk/n2;->super(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;Z)Z

    .line 15
    iget-object v2, p0, Lcom/apk/j2;->if:Lcom/apk/h2;

    .line 16
    iget-object v2, v2, Lcom/apk/h2;->this:Lcom/apk/g2;

    .line 17
    iget-object v3, p0, Lcom/apk/j2;->do:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/apk/g2;->switch(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/apk/j2;->if:Lcom/apk/h2;

    invoke-virtual {v2}, Lcom/apk/h2;->G()V

    .line 20
    iget-object v2, p0, Lcom/apk/j2;->if:Lcom/apk/h2;

    .line 21
    invoke-virtual {v2, v1, v0}, Lcom/apk/h2;->B(IZ)V

    return-void
.end method
