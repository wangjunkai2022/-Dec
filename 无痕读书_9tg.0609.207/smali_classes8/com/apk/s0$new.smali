.class public Lcom/apk/s0$new;
.super Lcom/apk/yv;
.source "ReadTimerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/s0;->goto(Landroid/content/Context;Lcom/apk/hf;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/hf;

.field public final synthetic if:Lcom/apk/s0;


# direct methods
.method public constructor <init>(Lcom/apk/s0;Lcom/apk/hf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/s0$new;->if:Lcom/apk/s0;

    iput-object p2, p0, Lcom/apk/s0$new;->do:Lcom/apk/hf;

    invoke-direct {p0}, Lcom/apk/yv;-><init>()V

    return-void
.end method


# virtual methods
.method public if(Lcom/lxj/xpopup/core/BasePopupView;)V
    .locals 3

    const v0, 0x7f0904ea

    .line 1
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 2
    sget-object v0, Lcom/apk/hf;->do:Lcom/apk/hf;

    iget-object v1, p0, Lcom/apk/s0$new;->do:Lcom/apk/hf;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/s0$new;->if:Lcom/apk/s0;

    .line 4
    iget-object v0, v0, Lcom/apk/s0;->throw:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/apk/s0$new;->if:Lcom/apk/s0;

    .line 7
    iget-object v0, v0, Lcom/apk/s0;->throw:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/apk/hf;->if:Lcom/apk/hf;

    if-ne v0, v1, :cond_1

    .line 10
    iget-object v0, p0, Lcom/apk/s0$new;->if:Lcom/apk/s0;

    .line 11
    iget-object v0, v0, Lcom/apk/s0;->return:Ljava/lang/String;

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/apk/s0$new;->if:Lcom/apk/s0;

    .line 14
    iget-object v0, v0, Lcom/apk/s0;->return:Ljava/lang/String;

    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/apk/s0$new;->if:Lcom/apk/s0;

    invoke-virtual {p1}, Lcom/apk/s0;->for()Lcom/apk/g;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {p1}, Lcom/apk/g;->if()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swl/gg/sdk/TrAdSdk;->isRewardAdType(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "xz"

    if-eqz v0, :cond_2

    .line 18
    invoke-static {}, Lcom/apk/e;->while()Lcom/apk/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/apk/g;->if()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/apk/g;->do()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1, v1}, Lcom/apk/e;->native(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {p1}, Lcom/apk/g;->if()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swl/gg/sdk/TrAdSdk;->isFullAdType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    invoke-static {}, Lcom/apk/c;->while()Lcom/apk/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/apk/g;->if()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/apk/g;->do()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1, v1}, Lcom/apk/c;->native(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
