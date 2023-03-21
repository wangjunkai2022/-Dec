.class public Lcom/apk/gb0;
.super Lcom/apk/db0;
.source "TrDanMuManager.java"


# instance fields
.field public final synthetic case:Lcom/apk/xb0;

.field public final synthetic else:Lcom/apk/jb0;

.field public final synthetic for:Ljava/lang/String;

.field public final synthetic new:Ljava/lang/String;

.field public final synthetic try:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/apk/jb0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/xb0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/gb0;->else:Lcom/apk/jb0;

    iput-object p2, p0, Lcom/apk/gb0;->for:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/gb0;->new:Ljava/lang/String;

    iput-object p4, p0, Lcom/apk/gb0;->try:Ljava/lang/String;

    iput-object p5, p0, Lcom/apk/gb0;->case:Lcom/apk/xb0;

    invoke-direct {p0}, Lcom/apk/db0;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheSuccess(Lcom/apk/iy;)V
    .locals 7
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

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/apk/iy;->for()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/apk/gb0;->else:Lcom/apk/jb0;

    .line 4
    iget-object p1, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 5
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/apk/gb0;->for:Ljava/lang/String;

    iget-object v4, p0, Lcom/apk/gb0;->new:Ljava/lang/String;

    iget-object v5, p0, Lcom/apk/gb0;->try:Ljava/lang/String;

    iget-object v6, p0, Lcom/apk/gb0;->case:Lcom/apk/xb0;

    invoke-static/range {v1 .. v6}, Lcom/apk/jb0;->if(Lcom/apk/jb0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/xb0;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/apk/iy;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/apk/db0;->onSuccess(Lcom/apk/iy;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/apk/iy;->for()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/apk/gb0;->else:Lcom/apk/jb0;

    .line 4
    iget-object p1, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 5
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/apk/gb0;->for:Ljava/lang/String;

    iget-object v4, p0, Lcom/apk/gb0;->new:Ljava/lang/String;

    iget-object v5, p0, Lcom/apk/gb0;->try:Ljava/lang/String;

    iget-object v6, p0, Lcom/apk/gb0;->case:Lcom/apk/xb0;

    invoke-static/range {v1 .. v6}, Lcom/apk/jb0;->if(Lcom/apk/jb0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/xb0;)V

    :cond_0
    return-void
.end method
