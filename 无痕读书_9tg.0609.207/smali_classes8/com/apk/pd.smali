.class public Lcom/apk/pd;
.super Lcom/apk/c1;
.source "WebPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic case:Z

.field public do:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

.field public final synthetic else:Z

.field public final synthetic for:Ljava/lang/String;

.field public final synthetic goto:Z

.field public if:Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;

.field public final synthetic new:Z

.field public final synthetic this:Lcom/apk/qd;

.field public final synthetic try:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/apk/qd;Ljava/lang/String;ZLjava/lang/String;ZZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/pd;->this:Lcom/apk/qd;

    iput-object p2, p0, Lcom/apk/pd;->for:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/apk/pd;->new:Z

    iput-object p4, p0, Lcom/apk/pd;->try:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/apk/pd;->case:Z

    iput-boolean p6, p0, Lcom/apk/pd;->else:Z

    iput-boolean p7, p0, Lcom/apk/pd;->goto:Z

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/pd;->for:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/apk/pd;->new:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/pd;->try:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/pd;->for:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apk/nd;->catch(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/pd;->do:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/apk/pd;->case:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/apk/pd;->try:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/pd;->for:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/apk/nd;->break(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/pd;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/apk/pd;->this:Lcom/apk/qd;

    .line 3
    iget-object v0, p1, Lcom/apk/qd;->for:Lcom/apk/md;

    if-eqz v0, :cond_0

    .line 4
    iget-boolean v1, p0, Lcom/apk/pd;->else:Z

    iget-boolean v2, p0, Lcom/apk/pd;->goto:Z

    iget-boolean v3, p0, Lcom/apk/pd;->new:Z

    iget-boolean v4, p0, Lcom/apk/pd;->case:Z

    iget-object v5, p0, Lcom/apk/pd;->do:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    iget-object v6, p0, Lcom/apk/pd;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;

    invoke-virtual/range {v0 .. v6}, Lcom/apk/md;->if(ZZZZLcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;)V

    :cond_0
    return-void
.end method
