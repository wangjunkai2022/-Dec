.class public Lcom/apk/w50;
.super Lcom/apk/t50;
.source "TrGdtNativeUnifiedBanner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/apk/x60;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/apk/t50;-><init>(Landroid/content/Context;Lcom/apk/x60;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lcom/swl/gg/sdk/R$layout;->tr_ad_sdk_gdt_native_unified_banner:I

    return v0
.end method

.method public setThemeDayNight(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-boolean v0, p0, Lcom/apk/t50;->catch:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/t50;->this:Landroid/widget/TextView;

    const-string v1, "#111111"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Lcom/apk/t50;->break:Landroid/widget/TextView;

    const-string v1, "#666666"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/apk/t50;->catch:Z

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/apk/t50;->this:Landroid/widget/TextView;

    const-string v1, "#999999"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object v0, p0, Lcom/apk/t50;->break:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    :goto_0
    iput-boolean p1, p0, Lcom/apk/t50;->catch:Z

    return-void
.end method
