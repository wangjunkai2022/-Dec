.class public final Lcom/bytedance/msdk/api/TToast;
.super Ljava/lang/Object;
.source "TToast.java"


# static fields
.field public static do:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/bytedance/msdk/api/TToast;->do:Landroid/widget/Toast;

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/bytedance/msdk/api/TToast;->show(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/bytedance/msdk/api/TToast;->do:Landroid/widget/Toast;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    sput-object p0, Lcom/bytedance/msdk/api/TToast;->do:Landroid/widget/Toast;

    :goto_0
    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    :goto_1
    return-void
.end method
