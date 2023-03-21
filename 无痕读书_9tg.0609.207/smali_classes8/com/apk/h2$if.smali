.class public Lcom/apk/h2$if;
.super Lcom/apk/c1;
.source "BookReadPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/h2;->class(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic case:Lcom/apk/h2;

.field public do:Ljava/lang/String;

.field public final synthetic for:Ljava/lang/String;

.field public final synthetic if:Z

.field public final synthetic new:Ljava/lang/String;

.field public final synthetic try:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/apk/h2;ZLjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/h2$if;->case:Lcom/apk/h2;

    iput-boolean p2, p0, Lcom/apk/h2$if;->if:Z

    iput-object p3, p0, Lcom/apk/h2$if;->for:Ljava/lang/String;

    iput-object p4, p0, Lcom/apk/h2$if;->new:Ljava/lang/String;

    iput-object p5, p0, Lcom/apk/h2$if;->try:Landroid/content/Context;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/apk/h2$if;->if:Z

    if-nez v0, :cond_2

    const-string v0, "action"

    const-string v1, "error"

    .line 2
    invoke-static {v0, v1}, Lcom/apk/goto;->native(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/apk/h2$if;->for:Ljava/lang/String;

    const-string v2, "chapterid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/apk/h2$if;->new:Ljava/lang/String;

    const-string v2, "bookid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->new()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/BookAction.aspx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1, v0}, Lcom/apk/x4;->extends(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "info"

    .line 7
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/apk/h2$if;->do:Ljava/lang/String;

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f100317

    .line 9
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/apk/h2$if;->do:Ljava/lang/String;

    :cond_0
    const-string v1, "data"

    .line 10
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "result"

    .line 11
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    .line 13
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 14
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 15
    iget-object v2, p0, Lcom/apk/h2$if;->case:Lcom/apk/h2;

    invoke-virtual {v2}, Lcom/apk/h2;->catch()V

    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/apk/h2$if;->case:Lcom/apk/h2;

    invoke-virtual {v2}, Lcom/apk/h2;->static()Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v2

    .line 17
    iget-object v3, p0, Lcom/apk/h2$if;->case:Lcom/apk/h2;

    invoke-virtual {v3}, Lcom/apk/h2;->super()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/apk/h2$if;->case:Lcom/apk/h2;

    .line 18
    iget-object v5, v3, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 19
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/ChapterBean;->getUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/apk/h2$if;->case:Lcom/apk/h2;

    .line 20
    invoke-virtual {v2}, Lcom/apk/h2;->finally()Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    move-result-object v8

    const/4 v9, 0x1

    .line 21
    invoke-static/range {v4 .. v9}, Lcom/apk/n2;->super(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;Z)Z

    .line 22
    iget-object v2, p0, Lcom/apk/h2$if;->case:Lcom/apk/h2;

    .line 23
    iget-object v2, v2, Lcom/apk/h2;->this:Lcom/apk/g2;

    .line 24
    iget-object v3, p0, Lcom/apk/h2$if;->case:Lcom/apk/h2;

    .line 25
    iget-object v3, v3, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 26
    invoke-virtual {v2, v3}, Lcom/apk/g2;->switch(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 27
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    :goto_0
    iget-object v2, p0, Lcom/apk/h2$if;->case:Lcom/apk/h2;

    invoke-virtual {v2}, Lcom/apk/h2;->G()V

    .line 29
    iget-object v2, p0, Lcom/apk/h2$if;->case:Lcom/apk/h2;

    const/4 v3, 0x0

    .line 30
    invoke-virtual {v2, v3, v3}, Lcom/apk/h2;->B(IZ)V

    const-string v2, "\u9519\u8bef\u63d0\u4ea4\u6210\u529f\uff0c\u5df2\u4e3a\u60a8\u81ea\u52a8\u5237\u65b0\u3002\u5982\u679c\u5f53\u524d\u6ca1\u6709\u5f97\u5230\u89e3\u51b3\uff0c\u60a8\u53ef\u7a0d\u540e\u518d\u6b21\u70b9\u51fb\u62a5\u9519\u53cd\u9988\u7ed9\u6211\u4eec\uff0c\u6211\u4eec\u4f1a\u7b2c\u4e00\u65f6\u95f4\u5904\u7406\u3002"

    .line 31
    iput-object v2, p0, Lcom/apk/h2$if;->do:Ljava/lang/String;

    .line 32
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x4b0

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 35
    :cond_3
    :goto_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/apk/h2$if;->case:Lcom/apk/h2;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5
    iput-wide v0, p1, Lcom/apk/h2;->z:J

    .line 6
    iget-object p1, p0, Lcom/apk/h2$if;->try:Landroid/content/Context;

    iget-object v0, p0, Lcom/apk/h2$if;->do:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    invoke-static {p1, v0, v1, v2, v2}, Lcom/apk/eg;->j(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;ZZ)V

    goto :goto_0

    :cond_0
    const p1, 0x7f100141

    .line 8
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
