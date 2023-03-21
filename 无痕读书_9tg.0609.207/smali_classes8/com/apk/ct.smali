.class public final Lcom/apk/ct;
.super Lcom/apk/yv;
.source "DialogUtils.java"


# instance fields
.field public final synthetic do:Lcom/apk/zs;


# direct methods
.method public constructor <init>(Lcom/apk/zs;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ct;->do:Lcom/apk/zs;

    invoke-direct {p0}, Lcom/apk/yv;-><init>()V

    return-void
.end method


# virtual methods
.method public for(Lcom/lxj/xpopup/core/BasePopupView;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/ct;->do:Lcom/apk/zs;

    .line 2
    iget-object p1, p1, Lcom/apk/zs;->this:Lcom/apk/et;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/apk/et;->onDismiss()V

    :cond_0
    return-void
.end method

.method public if(Lcom/lxj/xpopup/core/BasePopupView;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/ct;->do:Lcom/apk/zs;

    .line 2
    iget-boolean v0, v0, Lcom/apk/zs;->final:Z

    if-eqz v0, :cond_1

    .line 3
    sget v0, Lcom/codelibrary/R$id;->tv_content:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 4
    iget-object v0, p0, Lcom/apk/ct;->do:Lcom/apk/zs;

    .line 5
    iget-object v0, v0, Lcom/apk/zs;->for:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 6
    :cond_0
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public new(Lcom/lxj/xpopup/core/BasePopupView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ct;->do:Lcom/apk/zs;

    .line 2
    iget-object v0, v0, Lcom/apk/zs;->goto:Lcom/apk/gt;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/apk/gt;->do(Lcom/lxj/xpopup/core/BasePopupView;)V

    :cond_0
    return-void
.end method
