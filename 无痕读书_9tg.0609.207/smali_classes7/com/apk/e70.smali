.class public abstract Lcom/apk/e70;
.super Ljava/lang/Object;
.source "BaseAdProvider.java"


# instance fields
.field public do:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/apk/z60;)V
    .locals 2

    const-string v0, "\u6fc0\u52b1\u89c6\u9891_"

    const-string v1, "_onReward"

    .line 1
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Lcom/apk/z60;->try()V

    :cond_0
    return-void
.end method

.method public abstract(Ljava/lang/String;)V
    .locals 2

    const-string v0, "\u5f00\u5c4f_"

    const-string v1, "_startReq"

    .line 1
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "\u4fe1\u606f\u6d41_"

    const-string v1, "_startReq"

    .line 1
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public break(Ljava/lang/String;Lcom/apk/x60;)V
    .locals 2

    const-string v0, "Banner_"

    const-string v1, "_onClicked"

    .line 1
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Lcom/apk/x60;->onAdClick()V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Lcom/apk/z60;)V
    .locals 2

    const-string v0, "\u6fc0\u52b1\u89c6\u9891_"

    const-string v1, "_onCached"

    .line 1
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Lcom/apk/z60;->onVideoCached()V

    :cond_0
    return-void
.end method

.method public case(Landroid/view/View;Ljava/lang/String;Lcom/apk/x60;)V
    .locals 2

    const-string v0, "Banner_"

    const-string v1, "_onLoaded"

    .line 1
    invoke-static {v0, p2, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 2
    invoke-interface {p3, p1}, Lcom/apk/x60;->new(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public catch(Ljava/lang/String;Lcom/apk/z60;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p2}, Lcom/apk/z60;->onAdClick()V

    :cond_0
    const-string p2, "\u6fc0\u52b1\u89c6\u9891_"

    const-string v0, "_onClicked"

    .line 2
    invoke-static {p2, p1, v0}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public class(Ljava/lang/String;Lcom/apk/a70;)V
    .locals 2

    const-string v0, "\u5f00\u5c4f_"

    const-string v1, "_onClicked"

    .line 1
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    check-cast p2, Lcom/apk/e60$do;

    .line 3
    iget-object p1, p2, Lcom/apk/e60$do;->do:Lcom/apk/e60;

    .line 4
    iget-object p1, p1, Lcom/apk/e60;->for:Lcom/apk/y60;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/apk/y60;->onAdClick()V

    :cond_0
    return-void
.end method

.method public const(ILjava/lang/String;Ljava/lang/String;Lcom/apk/x60;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4fe1\u606f\u6d41_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_Failed\uff1a"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/apk/k40;->this(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 2
    invoke-interface {p4, p1, p2}, Lcom/apk/b70;->if(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public continue(Ljava/lang/String;Lcom/apk/v60;)V
    .locals 2

    const-string v0, "\u5168\u5c4f\u89c6\u9891_"

    const-string v1, "_onLoaded"

    .line 1
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Lcom/apk/v60;->onAdLoaded()V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    const-string v0, "\u6fc0\u52b1\u89c6\u9891_"

    const-string v1, "_onComplete"

    .line 1
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public default(Ljava/lang/String;)V
    .locals 2

    const-string v0, "\u5168\u5c4f\u89c6\u9891_"

    const-string v1, "_onComplete"

    .line 1
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public do(ILjava/lang/String;Ljava/lang/String;Lcom/apk/v60;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5168\u5c4f\u89c6\u9891_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_onFailed\uff1a"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/apk/k40;->this(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 2
    invoke-interface {p4, p1, p2}, Lcom/apk/b70;->if(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public else(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u5728\u65f6\u95f4\u5185\u672a\u5b8c\u6210cache\uff0c\u76f4\u63a5\u5148show\uff0c\u907f\u514dloading\u592a\u4e45\uff1a"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x1f40

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/k40;->this(Ljava/lang/String;)V

    return-void
.end method

.method public extends(Ljava/lang/String;Lcom/apk/w60;)V
    .locals 2

    const-string v0, "\u63d2\u5c4f_"

    const-string v1, "_onLoaded"

    .line 1
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Lcom/apk/w60;->for()V

    :cond_0
    return-void
.end method

.method public final(Landroid/view/View;Ljava/lang/String;Lcom/apk/x60;)V
    .locals 2

    const-string v0, "\u4fe1\u606f\u6d41_"

    const-string v1, "_onLoaded"

    .line 1
    invoke-static {v0, p2, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 2
    invoke-interface {p3, p1}, Lcom/apk/x60;->new(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public finally(Ljava/lang/String;Lcom/apk/z60;)V
    .locals 2

    const-string v0, "\u6fc0\u52b1\u89c6\u9891_"

    const-string v1, "_onLoaded"

    .line 1
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Lcom/apk/z60;->onAdLoaded()V

    :cond_0
    return-void
.end method

.method public for(ILjava/lang/String;Ljava/lang/String;Lcom/apk/x60;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Banner_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_Failed\uff1a"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/apk/k40;->this(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 2
    invoke-interface {p4, p1, p2}, Lcom/apk/b70;->if(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public goto(Ljava/lang/String;Lcom/apk/v60;)V
    .locals 2

    const-string v0, "\u5168\u5c4f\u89c6\u9891_"

    const-string v1, "_onCached"

    .line 1
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Lcom/apk/v60;->onVideoCached()V

    :cond_0
    return-void
.end method

.method public if(ILjava/lang/String;Ljava/lang/String;Lcom/apk/w60;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u63d2\u5c4f_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_onFailed\uff1a"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/apk/k40;->this(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 2
    invoke-interface {p4, p1, p2}, Lcom/apk/b70;->if(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public implements(Ljava/lang/String;Lcom/apk/x60;)V
    .locals 2

    const-string v0, "\u4fe1\u606f\u6d41_"

    const-string v1, "_onClosed"

    .line 1
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Lcom/apk/x60;->goto()V

    :cond_0
    return-void
.end method

.method public import(Ljava/lang/String;Lcom/apk/z60;)V
    .locals 2

    const-string v0, "\u6fc0\u52b1\u89c6\u9891_"

    const-string v1, "_onClosed"

    .line 1
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Lcom/apk/z60;->onAdClose()V

    :cond_0
    return-void
.end method

.method public instanceof(Ljava/lang/String;)V
    .locals 2

    const-string v0, "\u5168\u5c4f\u89c6\u9891_"

    const-string v1, "_startReq"

    .line 1
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public interface(Ljava/lang/String;)V
    .locals 2

    const-string v0, "\u63d2\u5c4f_"

    const-string v1, "_startReq"

    .line 1
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public native(Ljava/lang/String;Lcom/apk/a70;)V
    .locals 2

    const-string v0, "\u5f00\u5c4f_"

    const-string v1, "_onDismiss"

    .line 1
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    check-cast p2, Lcom/apk/e60$do;

    .line 3
    iget-object p1, p2, Lcom/apk/e60$do;->do:Lcom/apk/e60;

    .line 4
    iget-object p1, p1, Lcom/apk/e60;->for:Lcom/apk/y60;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/apk/y60;->onAdDismiss()V

    :cond_0
    return-void
.end method

.method public new(ILjava/lang/String;Ljava/lang/String;Lcom/apk/z60;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6fc0\u52b1\u89c6\u9891_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_onFailed\uff1a"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/apk/k40;->this(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 2
    invoke-interface {p4, p1, p2}, Lcom/apk/b70;->if(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public package(Ljava/lang/String;Lcom/apk/a70;)V
    .locals 2

    const-string v0, "\u5f00\u5c4f_"

    const-string v1, "_onLoaded"

    .line 1
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    check-cast p2, Lcom/apk/e60$do;

    .line 3
    iget-object p1, p2, Lcom/apk/e60$do;->do:Lcom/apk/e60;

    .line 4
    iget-object p1, p1, Lcom/apk/e60;->for:Lcom/apk/y60;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/apk/y60;->for()V

    :cond_0
    return-void
.end method

.method public private(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Banner_"

    const-string v1, "_startReq"

    .line 1
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public protected(Ljava/lang/String;)V
    .locals 2

    const-string v0, "\u6fc0\u52b1\u89c6\u9891_"

    const-string v1, "_startReq"

    .line 1
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public public(Ljava/lang/String;Lcom/apk/b70;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u5e7f\u544a\u52a0\u8f7d\u5916\u90e8\u8d85\u65f6"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/k40;->this(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const v0, 0x1443b

    .line 2
    invoke-interface {p2, v0, p1}, Lcom/apk/b70;->if(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public return(Ljava/lang/String;Lcom/apk/v60;)V
    .locals 2

    const-string v0, "\u5168\u5c4f\u89c6\u9891_"

    const-string v1, "_onClosed"

    .line 1
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Lcom/apk/v60;->onAdClose()V

    :cond_0
    return-void
.end method

.method public static(Ljava/lang/String;Lcom/apk/w60;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/apk/e70;->do:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/apk/e70;->do:Z

    const-string v0, "\u63d2\u5c4f_"

    const-string v1, "_onExpose"

    .line 3
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p2}, Lcom/apk/w60;->do()V

    :cond_0
    return-void
.end method

.method public strictfp(Ljava/lang/String;Lcom/apk/x60;)V
    .locals 2

    const-string v0, "\u4fe1\u606f\u6d41_"

    const-string v1, "_onClicked"

    .line 1
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Lcom/apk/x60;->onAdClick()V

    :cond_0
    return-void
.end method

.method public super(Ljava/lang/String;Lcom/apk/v60;)V
    .locals 2

    const-string v0, "\u5168\u5c4f\u89c6\u9891_"

    const-string v1, "_onClicked"

    .line 1
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Lcom/apk/v60;->onAdClick()V

    :cond_0
    return-void
.end method

.method public switch(Ljava/lang/String;Lcom/apk/x60;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/apk/e70;->do:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/apk/e70;->do:Z

    const-string v0, "Banner_"

    const-string v1, "_onExpose"

    .line 3
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p2}, Lcom/apk/x60;->do()V

    :cond_0
    return-void
.end method

.method public synchronized(Ljava/lang/String;Lcom/apk/x60;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/apk/e70;->do:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/apk/e70;->do:Z

    const-string v0, "\u4fe1\u606f\u6d41_"

    const-string v1, "_onExpose"

    .line 3
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p2}, Lcom/apk/x60;->do()V

    :cond_0
    return-void
.end method

.method public this(Ljava/lang/String;Lcom/apk/w60;)V
    .locals 2

    const-string v0, "\u63d2\u5c4f_"

    const-string v1, "_onClicked"

    .line 1
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Lcom/apk/w60;->onAdClick()V

    :cond_0
    return-void
.end method

.method public throw(Ljava/lang/String;Lcom/apk/w60;)V
    .locals 2

    const-string v0, "\u63d2\u5c4f_"

    const-string v1, "_onClosed"

    .line 1
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Lcom/apk/w60;->onAdClosed()V

    :cond_0
    return-void
.end method

.method public throws(Ljava/lang/String;Lcom/apk/a70;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/apk/e70;->do:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/apk/e70;->do:Z

    const-string v0, "\u5f00\u5c4f_"

    const-string v1, "_onExposure"

    .line 3
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 4
    check-cast p2, Lcom/apk/e60$do;

    .line 5
    iget-object p1, p2, Lcom/apk/e60$do;->do:Lcom/apk/e60;

    .line 6
    iget-object p1, p1, Lcom/apk/e60;->for:Lcom/apk/y60;

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {p1}, Lcom/apk/y60;->do()V

    :cond_0
    return-void
.end method

.method public transient(Ljava/lang/String;Lcom/apk/v60;)V
    .locals 2

    const-string v0, "\u5168\u5c4f\u89c6\u9891_"

    const-string v1, "_onShow"

    .line 1
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Lcom/apk/v60;->onAdShow()V

    :cond_0
    return-void
.end method

.method public try(ILjava/lang/String;Ljava/lang/String;Lcom/apk/a70;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u5c4f_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_onFailed\uff1a"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/apk/k40;->this(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 2
    check-cast p4, Lcom/apk/e60$do;

    .line 3
    iget-object p3, p4, Lcom/apk/e60$do;->do:Lcom/apk/e60;

    .line 4
    iget-object p3, p3, Lcom/apk/e60;->for:Lcom/apk/y60;

    if-eqz p3, :cond_0

    .line 5
    invoke-interface {p3, p1, p2}, Lcom/apk/b70;->if(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public volatile(Ljava/lang/String;Lcom/apk/z60;)V
    .locals 2

    const-string v0, "\u6fc0\u52b1\u89c6\u9891_"

    const-string v1, "_onShow"

    .line 1
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Lcom/apk/z60;->onAdShow()V

    :cond_0
    return-void
.end method

.method public while(Ljava/lang/String;Lcom/apk/x60;)V
    .locals 2

    const-string v0, "Banner_"

    const-string v1, "_onClosed"

    .line 1
    invoke-static {v0, p1, v1}, Lcom/apk/goto;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Lcom/apk/x60;->goto()V

    :cond_0
    return-void
.end method
