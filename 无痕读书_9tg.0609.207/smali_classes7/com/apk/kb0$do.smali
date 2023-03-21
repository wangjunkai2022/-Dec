.class public Lcom/apk/kb0$do;
.super Lcom/apk/ma0;
.source "TrCommentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/kb0;->case(Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic case:Lcom/apk/kb0;

.field public final synthetic for:Z

.field public final synthetic new:I

.field public final synthetic try:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/apk/kb0;ZILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/kb0$do;->case:Lcom/apk/kb0;

    iput-boolean p2, p0, Lcom/apk/kb0$do;->for:Z

    iput p3, p0, Lcom/apk/kb0$do;->new:I

    iput-object p4, p0, Lcom/apk/kb0$do;->try:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apk/ma0;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheSuccess(Lcom/apk/iy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/mx;->onCacheSuccess(Lcom/apk/iy;)V

    .line 2
    iget-boolean v0, p0, Lcom/apk/kb0$do;->for:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apk/kb0$do;->case:Lcom/apk/kb0;

    .line 3
    iget-object v0, v0, Lcom/apk/eb0;->do:Lcom/apk/fb0;

    if-eqz v0, :cond_0

    .line 4
    check-cast v0, Lcom/apk/lb0;

    invoke-interface {v0}, Lcom/apk/lb0;->for()V

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/apk/iy;->for()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/apk/kb0$do;->case:Lcom/apk/kb0;

    .line 7
    iget-object v1, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 8
    check-cast v1, Ljava/lang/String;

    iget v2, p0, Lcom/apk/kb0$do;->new:I

    iget-boolean v3, p0, Lcom/apk/kb0$do;->for:Z

    invoke-static {v0, v1, v2, v3}, Lcom/apk/kb0;->if(Lcom/apk/kb0;Ljava/lang/String;IZ)V

    :cond_1
    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 10
    check-cast p1, Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public onError(Lcom/apk/iy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/mx;->onError(Lcom/apk/iy;)V

    .line 2
    invoke-static {}, Lcom/apk/fa0;->return()Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/apk/iy;->do()I

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/apk/kb0$do;->case:Lcom/apk/kb0;

    .line 4
    iget-object p1, p1, Lcom/apk/eb0;->do:Lcom/apk/fb0;

    if-eqz p1, :cond_1

    .line 5
    check-cast p1, Lcom/apk/lb0;

    iget v0, p0, Lcom/apk/kb0$do;->new:I

    iget-boolean v1, p0, Lcom/apk/kb0$do;->for:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v3, v1}, Lcom/apk/lb0;->try(Ljava/util/List;IZZ)V

    :cond_1
    return-void
.end method

.method public onFinish(Lcom/apk/iy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/mx;->onFinish(Lcom/apk/iy;)V

    .line 2
    iget-boolean p1, p0, Lcom/apk/kb0$do;->for:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/apk/kb0$do;->case:Lcom/apk/kb0;

    .line 3
    iget-object p1, p1, Lcom/apk/eb0;->do:Lcom/apk/fb0;

    if-eqz p1, :cond_0

    .line 4
    check-cast p1, Lcom/apk/lb0;

    invoke-interface {p1}, Lcom/apk/lb0;->for()V

    :cond_0
    return-void
.end method

.method public onStart(Lcom/apk/qy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/qy<",
            "Ljava/lang/String;",
            "+",
            "Lcom/apk/qy;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/ma0;->onStart(Lcom/apk/qy;)V

    .line 2
    iget-boolean p1, p0, Lcom/apk/kb0$do;->for:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/apk/kb0$do;->case:Lcom/apk/kb0;

    .line 3
    iget-object p1, p1, Lcom/apk/eb0;->do:Lcom/apk/fb0;

    if-eqz p1, :cond_0

    .line 4
    check-cast p1, Lcom/apk/lb0;

    invoke-interface {p1}, Lcom/apk/lb0;->goto()V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/apk/iy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/ma0;->onSuccess(Lcom/apk/iy;)V

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/apk/iy;->for()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/apk/kb0$do;->case:Lcom/apk/kb0;

    .line 4
    iget-object v1, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 5
    check-cast v1, Ljava/lang/String;

    iget v2, p0, Lcom/apk/kb0$do;->new:I

    iget-boolean v3, p0, Lcom/apk/kb0$do;->for:Z

    invoke-static {v0, v1, v2, v3}, Lcom/apk/kb0;->if(Lcom/apk/kb0;Ljava/lang/String;IZ)V

    .line 6
    invoke-virtual {p1}, Lcom/apk/iy;->do()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_1

    .line 7
    invoke-static {}, Lcom/apk/sb0;->do()Lcom/apk/nb0;

    move-result-object v0

    check-cast v0, Lcom/apk/mb0;

    .line 8
    iget-object v1, v0, Lcom/apk/mb0;->if:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    const-string v2, "SP_SDK_REQUEST_TOKEN_KEY"

    .line 9
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/apk/mb0;->do()V

    :cond_1
    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 12
    check-cast p1, Ljava/lang/String;

    :cond_2
    return-void
.end method
