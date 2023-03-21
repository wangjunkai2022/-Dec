.class public Lcom/swl/gg/ggs/SwlAdPosters;
.super Ljava/lang/Object;
.source "SwlAdPosters.java"


# instance fields
.field public mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/swl/gg/ggs/SwlAdPosters;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/swl/gg/ggs/SwlAdPosters;->mActivity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public load(Landroid/app/Activity;Ljava/lang/String;Lcom/apk/n40;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/swl/gg/ggs/SwlAdPosters;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/apk/b1;

    invoke-direct {p1}, Lcom/apk/b1;-><init>()V

    new-instance p3, Lcom/swl/gg/ggs/SwlAdPosters$1;

    invoke-direct {p3, p0, p2}, Lcom/swl/gg/ggs/SwlAdPosters$1;-><init>(Lcom/swl/gg/ggs/SwlAdPosters;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestory()V
    .locals 0

    return-void
.end method
