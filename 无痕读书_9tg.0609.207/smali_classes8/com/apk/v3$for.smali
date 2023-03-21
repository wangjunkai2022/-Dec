.class public Lcom/apk/v3$for;
.super Lcom/biquge/ebook/app/helper/req/convert/PublicCallback;
.source "NovelPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/v3;->const(ZLjava/lang/String;Lcom/biquge/ebook/app/bean/BookInfoEntity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Lcom/biquge/ebook/app/bean/BookInfoEntity;

.field public final synthetic if:Z

.field public final synthetic new:I

.field public final synthetic try:Lcom/apk/v3;


# direct methods
.method public constructor <init>(Lcom/apk/v3;Ljava/lang/String;ZLcom/biquge/ebook/app/bean/BookInfoEntity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/v3$for;->try:Lcom/apk/v3;

    iput-object p2, p0, Lcom/apk/v3$for;->do:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/apk/v3$for;->if:Z

    iput-object p4, p0, Lcom/apk/v3$for;->for:Lcom/biquge/ebook/app/bean/BookInfoEntity;

    iput p5, p0, Lcom/apk/v3$for;->new:I

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
    iget-object p1, p0, Lcom/apk/v3$for;->try:Lcom/apk/v3;

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
    iget-object p1, p0, Lcom/apk/v3$for;->try:Lcom/apk/v3;

    .line 3
    invoke-virtual {p1}, Lcom/apk/p1;->if()V

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
    invoke-super {p0, p1}, Lcom/biquge/ebook/app/helper/req/convert/PublicCallback;->onSuccess(Lcom/apk/iy;)V

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/apk/iy;->for()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    .line 4
    iget-object p1, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 5
    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "info"

    .line 6
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    const-string p1, "data"

    .line 8
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "result"

    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 10
    const-class p1, Lcom/biquge/ebook/app/bean/BookElement;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ListId = ? and type = ?"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/apk/v3$for;->do:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string v2, "my_collect"

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 11
    iget-object p1, p0, Lcom/apk/v3$for;->try:Lcom/apk/v3;

    iget-boolean v0, p0, Lcom/apk/v3$for;->if:Z

    iget-object v1, p0, Lcom/apk/v3$for;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/v3$for;->for:Lcom/biquge/ebook/app/bean/BookInfoEntity;

    invoke-static {p1, v0, v1, v2}, Lcom/apk/v3;->case(Lcom/apk/v3;ZLjava/lang/String;Lcom/biquge/ebook/app/bean/BookInfoEntity;)V

    .line 12
    iget-object p1, p0, Lcom/apk/v3$for;->try:Lcom/apk/v3;

    .line 13
    iget-object p1, p1, Lcom/apk/v3;->for:Lcom/apk/u5;

    if-eqz p1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/apk/v3$for;->try:Lcom/apk/v3;

    .line 15
    iget-object p1, p1, Lcom/apk/v3;->for:Lcom/apk/u5;

    .line 16
    iget v0, p0, Lcom/apk/v3$for;->new:I

    invoke-virtual {p1, v0}, Lcom/apk/u5;->this(I)V
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
