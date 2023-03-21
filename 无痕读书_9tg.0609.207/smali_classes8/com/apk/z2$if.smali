.class public Lcom/apk/z2$if;
.super Lcom/biquge/ebook/app/helper/req/convert/PublicCallback;
.source "ComicPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/z2;->const(ZLjava/lang/String;Lcom/manhua/data/bean/ComicInfoEntity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Z

.field public final synthetic for:Lcom/manhua/data/bean/ComicInfoEntity;

.field public final synthetic if:Ljava/lang/String;

.field public final synthetic new:I

.field public final synthetic try:Lcom/apk/z2;


# direct methods
.method public constructor <init>(Lcom/apk/z2;ZLjava/lang/String;Lcom/manhua/data/bean/ComicInfoEntity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/z2$if;->try:Lcom/apk/z2;

    iput-boolean p2, p0, Lcom/apk/z2$if;->do:Z

    iput-object p3, p0, Lcom/apk/z2$if;->if:Ljava/lang/String;

    iput-object p4, p0, Lcom/apk/z2$if;->for:Lcom/manhua/data/bean/ComicInfoEntity;

    iput p5, p0, Lcom/apk/z2$if;->new:I

    invoke-direct {p0}, Lcom/biquge/ebook/app/helper/req/convert/PublicCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/apk/iy;)V
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
    invoke-super {p0, p1}, Lcom/biquge/ebook/app/helper/req/convert/BaseCallback;->onError(Lcom/apk/iy;)V

    const p1, 0x7f100141

    .line 2
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

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
    iget-object p1, p0, Lcom/apk/z2$if;->try:Lcom/apk/z2;

    .line 3
    invoke-virtual {p1}, Lcom/apk/p1;->do()V

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
    invoke-super {p0, p1}, Lcom/biquge/ebook/app/helper/req/convert/PublicCallback;->onStart(Lcom/apk/qy;)V

    .line 2
    iget-object p1, p0, Lcom/apk/z2$if;->try:Lcom/apk/z2;

    .line 3
    invoke-virtual {p1}, Lcom/apk/p1;->if()V

    return-void
.end method

.method public onSuccess(Lcom/apk/iy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/iy<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/biquge/ebook/app/helper/req/convert/PublicCallback;->onSuccess(Lcom/apk/iy;)V

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/apk/iy;->for()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 4
    check-cast p1, Ljava/lang/String;

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "info"

    .line 7
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    const-string p1, "data"

    .line 9
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "result"

    .line 10
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 11
    iget-object p1, p0, Lcom/apk/z2$if;->try:Lcom/apk/z2;

    iget-boolean v0, p0, Lcom/apk/z2$if;->do:Z

    iget-object v1, p0, Lcom/apk/z2$if;->if:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/z2$if;->for:Lcom/manhua/data/bean/ComicInfoEntity;

    invoke-static {p1, v0, v1, v2}, Lcom/apk/z2;->new(Lcom/apk/z2;ZLjava/lang/String;Lcom/manhua/data/bean/ComicInfoEntity;)V

    .line 12
    iget-object p1, p0, Lcom/apk/z2$if;->try:Lcom/apk/z2;

    .line 13
    iget-object p1, p1, Lcom/apk/z2;->for:Lcom/apk/r5;

    if-eqz p1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/apk/z2$if;->try:Lcom/apk/z2;

    .line 15
    iget-object p1, p1, Lcom/apk/z2;->for:Lcom/apk/r5;

    .line 16
    iget v0, p0, Lcom/apk/z2$if;->new:I

    invoke-virtual {p1, v0}, Lcom/apk/r5;->goto(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
