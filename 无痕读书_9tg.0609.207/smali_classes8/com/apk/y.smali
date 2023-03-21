.class public Lcom/apk/y;
.super Ljava/lang/Object;
.source "SwlAdLoader.java"

# interfaces
.implements Lcom/apk/r40;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/apk/o40;)V
    .locals 0

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 2
    new-instance p1, Lcom/apk/y$do;

    invoke-direct {p1, p0, p4}, Lcom/apk/y$do;-><init>(Lcom/apk/y;Lcom/apk/o40;)V

    const/4 p4, 0x0

    .line 3
    invoke-static {p2, p3, p4, p1}, Lcom/apk/u;->super(Ljava/lang/String;Landroid/widget/ImageView;ILcom/apk/j1;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    if-ne p1, p3, :cond_2

    .line 5
    new-instance p1, Lcom/apk/b1;

    invoke-direct {p1}, Lcom/apk/b1;-><init>()V

    new-instance p3, Lcom/apk/y$if;

    invoke-direct {p3, p0, p2, p4}, Lcom/apk/y$if;-><init>(Lcom/apk/y;Ljava/lang/String;Lcom/apk/o40;)V

    invoke-virtual {p1, p3}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {p2}, Lcom/apk/u;->else(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p4, :cond_4

    .line 7
    invoke-interface {p4}, Lcom/apk/o40;->success()V

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    .line 8
    invoke-interface {p4}, Lcom/apk/o40;->error()V

    :cond_4
    :goto_0
    return-void
.end method
