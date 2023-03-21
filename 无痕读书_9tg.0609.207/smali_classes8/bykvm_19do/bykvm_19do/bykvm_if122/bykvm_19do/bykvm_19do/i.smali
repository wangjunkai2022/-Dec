.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;
.super Ljava/lang/Object;
.source "TTInterRefreshableBannerAdManager.java"


# instance fields
.field public a:I

.field public final b:Landroid/app/Activity;

.field public final c:Ljava/lang/String;

.field public d:Lcom/bytedance/msdk/api/AdSlot;

.field public e:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;

.field public f:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

.field public g:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

.field public h:Lcom/apk/ps;

.field public final i:Landroid/os/Handler;

.field public final j:Landroid/os/Handler;

.field public k:Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAdListener;

.field public l:Lcom/bytedance/msdk/api/v2/ad/banner/GMNativeToBannerListener;

.field public final m:Landroid/view/View$OnAttachStateChangeListener;

.field public final n:Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAdListener;

.field public final o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->a:I

    .line 3
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i$a;

    invoke-direct {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i$a;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;)V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->m:Landroid/view/View$OnAttachStateChangeListener;

    .line 4
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i$b;

    invoke-direct {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i$b;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;)V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->n:Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAdListener;

    .line 5
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i$c;

    invoke-direct {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i$c;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;)V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->o:Ljava/lang/Runnable;

    .line 6
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->b:Landroid/app/Activity;

    .line 7
    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->c:Ljava/lang/String;

    .line 8
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    invoke-direct {v0, p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->f:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    if-eqz p1, :cond_0

    .line 9
    new-instance p2, Lcom/apk/ps;

    invoke-direct {p2, p1}, Lcom/apk/ps;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->h:Lcom/apk/ps;

    .line 10
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->m:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 11
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->h:Lcom/apk/ps;

    new-instance p2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i$d;

    invoke-direct {p2, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i$d;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;)V

    invoke-virtual {p1, p2}, Lcom/apk/ps;->setVisibilityChangeListener(Lcom/apk/ps$if;)V

    .line 12
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->getMSDKThreadLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->i:Landroid/os/Handler;

    .line 13
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->j:Landroid/os/Handler;

    .line 14
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->f()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 15
    iget-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_long108/c;->c(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_case1/c;->n()I

    move-result p1

    const/16 p2, 0x2710

    const-string v0, "TMe"

    if-lt p1, p2, :cond_1

    const p2, 0x2bf20

    if-gt p1, p2, :cond_1

    .line 17
    iput p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->a:I

    const-string p1, "---==-----banner\u8f6e\u64ad\u65f6\u95f4\uff1a"

    .line 18
    invoke-static {p1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---==-----banner\u8f6e\u64ad\u65f6\u95f4\u4e0b\u53d1\u4e0d\u572810*1000\uff5e180*1000\u8303\u56f4\u5185\uff1a"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\uff0c\u7981\u6b62banner\u8f6e\u64ad"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;)I
    .locals 0

    .line 1
    iget p0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->a:I

    return p0
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;
    .locals 0

    .line 2
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->f:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    return-object p1
.end method

.method public static synthetic b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->s()V

    return-void
.end method

.method public static synthetic c(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->t()V

    return-void
.end method

.method public static synthetic d(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->r()V

    return-void
.end method

.method public static synthetic e(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;)Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAdListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->k:Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAdListener;

    return-object p0
.end method

.method public static synthetic f(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->g:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    return-object p0
.end method

.method public static synthetic g(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;)Lcom/apk/ps;
    .locals 0

    .line 1
    iget-object p0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->h:Lcom/apk/ps;

    return-object p0
.end method

.method public static synthetic h(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->f:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    return-object p0
.end method

.method public static synthetic i(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->j:Landroid/os/Handler;

    return-object p0
.end method

.method private r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private s()V
    .locals 4

    .line 1
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->b:Landroid/app/Activity;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->g:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    .line 2
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->n:Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAdListener;

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;->a(Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAdListener;)V

    .line 3
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->g:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->l:Lcom/bytedance/msdk/api/v2/ad/banner/GMNativeToBannerListener;

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;->a(Lcom/bytedance/msdk/api/v2/ad/banner/GMNativeToBannerListener;)V

    .line 4
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->g:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->d:Lcom/bytedance/msdk/api/AdSlot;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->e:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;->a(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAdLoadCallback;)V

    return-void
.end method

.method private t()V
    .locals 4

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->i:Landroid/os/Handler;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->o:Ljava/lang/Runnable;

    iget v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->a:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 12
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->j:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 13
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->r()V

    .line 14
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->h:Lcom/apk/ps;

    if-eqz v0, :cond_0

    .line 15
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->m:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 16
    :cond_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->f:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;->B()V

    .line 18
    :cond_1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->g:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    if-eqz v0, :cond_2

    .line 19
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;->B()V

    :cond_2
    return-void
.end method

.method public a(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAdLoadCallback;)V
    .locals 1

    .line 3
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->d:Lcom/bytedance/msdk/api/AdSlot;

    .line 4
    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->e:Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;

    .line 5
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->f:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    invoke-virtual {v0, p1, p2, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;->a(Lcom/bytedance/msdk/api/AdSlot;Lcom/bytedance/msdk/api/v2/slot/GMAdSlotBase;Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAdLoadCallback;)V

    return-void
.end method

.method public a(Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAdListener;)V
    .locals 1

    .line 6
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->k:Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAdListener;

    .line 7
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->f:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    if-eqz p1, :cond_0

    .line 8
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->n:Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAdListener;

    invoke-virtual {p1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;->a(Lcom/bytedance/msdk/api/v2/ad/banner/GMBannerAdListener;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/bytedance/msdk/api/v2/ad/banner/GMNativeToBannerListener;)V
    .locals 1

    .line 9
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->l:Lcom/bytedance/msdk/api/v2/ad/banner/GMNativeToBannerListener;

    .line 10
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->f:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;->a(Lcom/bytedance/msdk/api/v2/ad/banner/GMNativeToBannerListener;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 20
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->f:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;->a(Z)V

    :cond_0
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/AdLoadInfo;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->f:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->C()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->f:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->E()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x2

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->f:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->F()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Landroid/view/View;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->f:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->b(Lcom/bytedance/msdk/base/TTBaseAd;)V

    .line 4
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->f:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;->e0()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->h:Lcom/apk/ps;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 9
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 10
    :cond_0
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->h:Lcom/apk/ps;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 11
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->h:Lcom/apk/ps;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public f()Lcom/bytedance/msdk/api/GMAdEcpmInfo;
    .locals 1

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->f:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->b()Lcom/bytedance/msdk/api/GMAdEcpmInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/GMAdEcpmInfo;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->f:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->c()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->f:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/e;->G()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/api/GMAdEcpmInfo;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->f:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->f()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->f:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;->H()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->a:I

    return v0
.end method

.method public l()Lcom/bytedance/msdk/api/GMAdEcpmInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->f:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;->J()Lcom/bytedance/msdk/api/GMAdEcpmInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->f:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_new1/c;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->f:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;->f0()Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->f:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;->g0()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->f:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;->h0()V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/i;->f:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_19do/d;->i0()V

    :cond_0
    return-void
.end method
