.class public Lcom/apk/u0;
.super Ljava/lang/Object;
.source "ToolBarHelper.java"


# static fields
.field public static new:Lcom/apk/u0;


# instance fields
.field public do:I

.field public for:Z

.field public if:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do()Lcom/apk/u0;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/u0;->new:Lcom/apk/u0;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/apk/u0;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/apk/u0;->new:Lcom/apk/u0;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/apk/u0;

    invoke-direct {v1}, Lcom/apk/u0;-><init>()V

    sput-object v1, Lcom/apk/u0;->new:Lcom/apk/u0;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/apk/u0;->new:Lcom/apk/u0;

    return-object v0
.end method

.method public static for(Landroid/app/Activity;ZZZ)V
    .locals 0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    const/16 p1, 0x100

    if-eqz p3, :cond_1

    const/16 p1, 0x500

    goto :goto_0

    :cond_0
    const/16 p1, 0x300

    if-eqz p3, :cond_1

    const/16 p1, 0x700

    :cond_1
    :goto_0
    or-int/lit16 p1, p1, 0x1000

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    :cond_2
    const/16 p1, 0x1b02

    if-eqz p3, :cond_3

    const/16 p1, 0x1f02

    .line 2
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public if()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/u0;->if:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
