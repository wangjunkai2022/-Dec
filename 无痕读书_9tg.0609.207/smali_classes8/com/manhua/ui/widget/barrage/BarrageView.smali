.class public Lcom/manhua/ui/widget/barrage/BarrageView;
.super Landroid/view/View;
.source "BarrageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;
    }
.end annotation


# static fields
.field public static final MAX_INTERVAL:I = 0x7d0

.field public static final MAX_LINE_LEN:I = 0x5

.field public static final MIN_INTERVAL:I = 0x3e8

.field public static final STATUS_PAUSE:I = 0x2

.field public static final STATUS_RUNNING:I = 0x1

.field public static final STATUS_STOP:I = 0x3

.field public static final TAG:Ljava/lang/String; = "BarrageView"

.field public static final random:Ljava/util/Random;

.field public static final speedFactors:[F


# instance fields
.field public isReloadSyncTag:Z

.field public isVisible:Z

.field public isWhileAddTag:Z

.field public mAlphaMark:I

.field public mBarrageDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/manhua/ui/widget/barrage/BarrageBean;",
            ">;"
        }
    .end annotation
.end field

.field public mBarrageItem:Lcom/manhua/ui/widget/barrage/IBarrageItem;

.field public mChannelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lcom/manhua/ui/widget/barrage/IBarrageItem;",
            ">;>;"
        }
    .end annotation
.end field

.field public mChannelY:[I

.field public mChapterAllBarrages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/manhua/ui/widget/barrage/BarrageBean;",
            ">;"
        }
    .end annotation
.end field

.field public mChapterId:Ljava/lang/String;

.field public mFontSizeMark:F

.field public mGestureDetector:Landroid/view/GestureDetector;

.field public mHeight:I

.field public mMaxRow:I

.field public final mMaxRunningPerRow:I

.field public mSpeedMark:F

.field public mWaitingItems:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/manhua/ui/widget/barrage/IBarrageItem;",
            ">;"
        }
    .end annotation
.end field

.field public previousTime:J

.field public final resumeRunnable:Ljava/lang/Runnable;

.field public volatile status:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/manhua/ui/widget/barrage/BarrageView;->random:Ljava/util/Random;

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lcom/manhua/ui/widget/barrage/BarrageView;->speedFactors:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
        0x3f99999a    # 1.2f
        0x3fa66666    # 1.3f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/manhua/ui/widget/barrage/BarrageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/manhua/ui/widget/barrage/BarrageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x3

    .line 4
    iput p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->status:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mMaxRow:I

    const/4 p1, 0x2

    .line 6
    iput p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mMaxRunningPerRow:I

    const-wide/16 p1, 0x0

    .line 7
    iput-wide p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->previousTime:J

    const/16 p1, 0xff

    .line 8
    iput p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mAlphaMark:I

    .line 9
    new-instance p1, Lcom/manhua/ui/widget/barrage/BarrageView$2;

    invoke-direct {p1, p0}, Lcom/manhua/ui/widget/barrage/BarrageView$2;-><init>(Lcom/manhua/ui/widget/barrage/BarrageView;)V

    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->resumeRunnable:Ljava/lang/Runnable;

    .line 10
    invoke-direct {p0}, Lcom/manhua/ui/widget/barrage/BarrageView;->init()V

    return-void
.end method

.method public static synthetic access$000(Lcom/manhua/ui/widget/barrage/BarrageView;)Lcom/manhua/ui/widget/barrage/IBarrageItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mBarrageItem:Lcom/manhua/ui/widget/barrage/IBarrageItem;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/manhua/ui/widget/barrage/BarrageView;Lcom/manhua/ui/widget/barrage/IBarrageItem;)Lcom/manhua/ui/widget/barrage/IBarrageItem;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mBarrageItem:Lcom/manhua/ui/widget/barrage/IBarrageItem;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/manhua/ui/widget/barrage/BarrageView;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChannelMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/manhua/ui/widget/barrage/BarrageView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->isVisible:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/manhua/ui/widget/barrage/BarrageView;)Ljava/util/Deque;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mWaitingItems:Ljava/util/Deque;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/manhua/ui/widget/barrage/BarrageView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->status:I

    return p1
.end method

.method private addItemToHead(Lcom/manhua/ui/widget/barrage/IBarrageItem;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mWaitingItems:Ljava/util/Deque;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mWaitingItems:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->offerFirst(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private clear()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/manhua/ui/widget/barrage/BarrageView;->clearItems()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->status:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private clearItems()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/manhua/ui/widget/barrage/BarrageView;->clearRunning()V

    .line 2
    invoke-direct {p0}, Lcom/manhua/ui/widget/barrage/BarrageView;->clearWaiting()V

    return-void
.end method

.method private clearRunning()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChannelMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChannelMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method private clearWaiting()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mWaitingItems:Ljava/util/Deque;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mWaitingItems:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    :cond_0
    return-void
.end method

.method public static dip2px(F)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/apk/eg;->catch(F)I

    move-result p0

    return p0
.end method

.method private findVacant(Lcom/manhua/ui/widget/barrage/IBarrageItem;)I
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChannelMap:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChannelMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mMaxRow:I

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChannelMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v1, Lcom/manhua/ui/widget/barrage/BarrageView;->random:Ljava/util/Random;

    iget v2, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mMaxRow:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 6
    :goto_1
    iget v2, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mMaxRow:I

    if-ge v0, v2, :cond_4

    .line 7
    iget-object v2, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChannelMap:Ljava/util/HashMap;

    add-int v3, v0, v1

    iget v4, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mMaxRow:I

    rem-int v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/manhua/ui/widget/barrage/IBarrageItem;

    .line 10
    invoke-interface {p1, v2}, Lcom/manhua/ui/widget/barrage/IBarrageItem;->willHit(Lcom/manhua/ui/widget/barrage/IBarrageItem;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 11
    iget p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mMaxRow:I

    rem-int/2addr v3, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    :cond_4
    const/4 p1, -0x1

    return p1
.end method

.method private getAlphaMark()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mAlphaMark:I

    return v0
.end method

.method private getFontSize()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mFontSizeMark:F

    const/high16 v1, 0x41680000    # 14.5f

    add-float/2addr v0, v1

    return v0
.end method

.method public static getRandom(II)I
    .locals 1

    .line 1
    sget-object v0, Lcom/manhua/ui/widget/barrage/BarrageView;->random:Ljava/util/Random;

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    rem-int/2addr v0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method public static getRandomFloat()F
    .locals 3

    .line 1
    sget-object v0, Lcom/manhua/ui/widget/barrage/BarrageView;->speedFactors:[F

    sget-object v1, Lcom/manhua/ui/widget/barrage/BarrageView;->random:Ljava/util/Random;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method private getReplacementSpan(Lcom/manhua/ui/widget/barrage/BarrageBean;)Landroid/text/style/ReplacementSpan;
    .locals 3

    .line 1
    new-instance v0, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;

    invoke-direct {p0}, Lcom/manhua/ui/widget/barrage/BarrageView;->getFontSize()F

    move-result v1

    invoke-direct {p0}, Lcom/manhua/ui/widget/barrage/BarrageView;->getAlphaMark()I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/manhua/ui/widget/barrage/BarrageView$RadiusBgSpan;-><init>(Lcom/manhua/ui/widget/barrage/BarrageBean;FI)V

    return-object v0
.end method

.method private getSpannableStringBuilder(Lcom/manhua/ui/widget/barrage/BarrageBean;)Landroid/text/SpannableStringBuilder;
    .locals 4

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Lcom/manhua/ui/widget/barrage/BarrageBean;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/manhua/ui/widget/barrage/BarrageView;->getReplacementSpan(Lcom/manhua/ui/widget/barrage/BarrageBean;)Landroid/text/style/ReplacementSpan;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/manhua/ui/widget/barrage/BarrageBean;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x0

    const/16 v3, 0x21

    .line 4
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private getSpeed()F
    .locals 2

    .line 1
    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageView;->getRandomFloat()F

    move-result v0

    iget v1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mSpeedMark:F

    add-float/2addr v0, v1

    return v0
.end method

.method private getUseBarrageBeans(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/manhua/ui/widget/barrage/BarrageBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mBarrageDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChapterAllBarrages:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mBarrageDatas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mBarrageDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mBarrageDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mBarrageDatas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    .line 8
    iget-object v3, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mBarrageDatas:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private init()V
    .locals 0

    return-void
.end method

.method private initGestureDetector()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/manhua/ui/widget/barrage/BarrageView$1;

    invoke-direct {v2, p0}, Lcom/manhua/ui/widget/barrage/BarrageView$1;-><init>(Lcom/manhua/ui/widget/barrage/BarrageView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private setData()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mWaitingItems:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mBarrageDatas:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 3
    invoke-direct {p0, v0}, Lcom/manhua/ui/widget/barrage/BarrageView;->getUseBarrageBeans(I)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v0, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChapterAllBarrages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/manhua/ui/widget/barrage/BarrageView;->getUseBarrageBeans(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 7
    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/manhua/ui/widget/barrage/BarrageBean;

    .line 10
    invoke-virtual {v5}, Lcom/manhua/ui/widget/barrage/BarrageBean;->getColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v5}, Lcom/manhua/ui/widget/barrage/BarrageBean;->getColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    move v6, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 11
    :goto_1
    new-instance v2, Lcom/manhua/ui/widget/barrage/BarrageItem;

    invoke-direct {p0, v5}, Lcom/manhua/ui/widget/barrage/BarrageView;->getSpannableStringBuilder(Lcom/manhua/ui/widget/barrage/BarrageBean;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 12
    invoke-direct {p0}, Lcom/manhua/ui/widget/barrage/BarrageView;->getAlphaMark()I

    move-result v7

    invoke-direct {p0}, Lcom/manhua/ui/widget/barrage/BarrageView;->getFontSize()F

    move-result v8

    invoke-direct {p0}, Lcom/manhua/ui/widget/barrage/BarrageView;->getSpeed()F

    move-result v9

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/manhua/ui/widget/barrage/BarrageItem;-><init>(Landroid/text/SpannableStringBuilder;Lcom/manhua/ui/widget/barrage/BarrageBean;IIFF)V

    .line 13
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_3
    iget-object v1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mWaitingItems:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-void
.end method

.method private whileAddBarrage()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->isVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mWaitingItems:Ljava/util/Deque;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->getInstance()Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->isScrollIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/manhua/ui/widget/barrage/BarrageView;->setData()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;Lcom/manhua/ui/widget/barrage/BarrageBean;)V
    .locals 7

    if-eqz p2, :cond_3

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChapterId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    :try_start_0
    iget p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mMaxRow:I

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChannelMap:Ljava/util/HashMap;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChannelMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mWaitingItems:Ljava/util/Deque;

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p2}, Lcom/manhua/ui/widget/barrage/BarrageBean;->getColor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/manhua/ui/widget/barrage/BarrageBean;->getColor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    move v3, p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v3, 0x0

    .line 5
    :goto_0
    new-instance p1, Lcom/manhua/ui/widget/barrage/BarrageItem;

    invoke-direct {p0, p2}, Lcom/manhua/ui/widget/barrage/BarrageView;->getSpannableStringBuilder(Lcom/manhua/ui/widget/barrage/BarrageBean;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 6
    invoke-direct {p0}, Lcom/manhua/ui/widget/barrage/BarrageView;->getAlphaMark()I

    move-result v4

    invoke-direct {p0}, Lcom/manhua/ui/widget/barrage/BarrageView;->getFontSize()F

    move-result v5

    invoke-direct {p0}, Lcom/manhua/ui/widget/barrage/BarrageView;->getSpeed()F

    move-result v6

    move-object v0, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/manhua/ui/widget/barrage/BarrageItem;-><init>(Landroid/text/SpannableStringBuilder;Lcom/manhua/ui/widget/barrage/BarrageBean;IIFF)V

    .line 7
    iget-object p2, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mWaitingItems:Ljava/util/Deque;

    invoke-interface {p2, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Lcom/manhua/ui/widget/barrage/BarrageView;->showBarrage()V

    goto :goto_2

    .line 9
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/manhua/ui/widget/barrage/BarrageView;->initBarrageView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public destory()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/manhua/ui/widget/barrage/BarrageView;->clear()V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChannelMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mWaitingItems:Ljava/util/Deque;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mBarrageDatas:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChapterAllBarrages:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    return-void
.end method

.method public initBarrageView()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChapterId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mHeight:I

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mHeight:I

    .line 4
    :cond_1
    iget v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mHeight:I

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChapterAllBarrages:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChannelMap:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChannelMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_c

    .line 6
    invoke-direct {p0}, Lcom/manhua/ui/widget/barrage/BarrageView;->initGestureDetector()V

    const/high16 v0, 0x42200000    # 40.0f

    .line 7
    invoke-static {v0}, Lcom/manhua/ui/widget/barrage/BarrageView;->dip2px(F)I

    move-result v0

    .line 8
    invoke-virtual {p0}, Lcom/manhua/ui/widget/barrage/BarrageView;->initMark()V

    .line 9
    iget-object v2, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChapterAllBarrages:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChapterAllBarrages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_7

    .line 10
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChapterAllBarrages:Ljava/util/List;

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mBarrageDatas:Ljava/util/List;

    .line 12
    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->getInstance()Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChapterId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->getBarrageDataItem(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 13
    iget-object v3, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChapterAllBarrages:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    :cond_6
    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->getInstance()Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->getUseAdBarrages()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 15
    iget-object v3, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChapterAllBarrages:Ljava/util/List;

    invoke-interface {v3, v1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 16
    :cond_7
    iget v2, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mMaxRow:I

    if-nez v2, :cond_9

    .line 17
    iget v2, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mHeight:I

    div-int/2addr v2, v0

    iput v2, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mMaxRow:I

    const/4 v3, 0x5

    if-le v2, v3, :cond_8

    .line 18
    iput v3, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mMaxRow:I

    .line 19
    :cond_8
    iget v2, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mMaxRow:I

    iget-object v3, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChapterAllBarrages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v2, v3, :cond_9

    .line 20
    iget-object v2, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChapterAllBarrages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mMaxRow:I

    .line 21
    :cond_9
    iget v2, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mMaxRow:I

    if-lez v2, :cond_c

    iget-object v2, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChannelMap:Ljava/util/HashMap;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChannelMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_c

    .line 22
    :cond_a
    new-instance v2, Ljava/util/HashMap;

    iget v3, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mMaxRow:I

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChannelMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    .line 23
    :goto_2
    iget v3, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mMaxRow:I

    if-ge v2, v3, :cond_b

    .line 24
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    iget-object v4, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChannelMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 26
    :cond_b
    iget v2, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mMaxRow:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChannelY:[I

    const/high16 v2, 0x41a00000    # 20.0f

    .line 27
    invoke-static {v2}, Lcom/manhua/ui/widget/barrage/BarrageView;->dip2px(F)I

    move-result v2

    .line 28
    :goto_3
    iget v3, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mMaxRow:I

    if-ge v1, v3, :cond_c

    .line 29
    iget-object v3, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChannelY:[I

    aput v2, v3, v1

    add-int/2addr v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 30
    :cond_c
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChapterAllBarrages:Ljava/util/List;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChapterAllBarrages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 31
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mWaitingItems:Ljava/util/Deque;

    if-nez v0, :cond_d

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mWaitingItems:Ljava/util/Deque;

    .line 33
    :cond_d
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mWaitingItems:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 34
    invoke-direct {p0}, Lcom/manhua/ui/widget/barrage/BarrageView;->setData()V

    .line 35
    :cond_e
    invoke-virtual {p0}, Lcom/manhua/ui/widget/barrage/BarrageView;->showBarrage()V

    goto :goto_4

    .line 36
    :cond_f
    invoke-direct {p0}, Lcom/manhua/ui/widget/barrage/BarrageView;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public initMark()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mAlphaMark:I

    const-string v1, "SP_BARRAGE_FONT_ALPHA_MARK_KEY"

    invoke-static {v1, v0}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mAlphaMark:I

    .line 2
    iget v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mFontSizeMark:F

    .line 3
    sget-object v1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v2, "SP_BARRAGE_FONT_SIZE_MARK_KEY"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 4
    iput v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mFontSizeMark:F

    .line 5
    iget v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mSpeedMark:F

    .line 6
    sget-object v1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v2, "SP_BARRAGE_FONT_SPEED_MARK_KEY"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 7
    iput v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mSpeedMark:F

    return-void
.end method

.method public isPaused()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->status:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/manhua/ui/widget/barrage/BarrageView;->destory()V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 3
    iget v1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->getInstance()Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->isScrollIdle()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChannelMap:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChannelMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChannelMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 6
    iget-object v3, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChannelMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/manhua/ui/widget/barrage/IBarrageItem;

    .line 9
    invoke-interface {v4}, Lcom/manhua/ui/widget/barrage/IBarrageItem;->isOut()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 10
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 11
    :cond_0
    invoke-interface {v4, p1}, Lcom/manhua/ui/widget/barrage/IBarrageItem;->doDraw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x3e8

    const/16 v3, 0x7d0

    .line 12
    invoke-static {v1, v3}, Lcom/manhua/ui/widget/barrage/BarrageView;->getRandom(II)I

    move-result v1

    int-to-long v3, v1

    .line 13
    iget-boolean v1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->isWhileAddTag:Z

    if-eqz v1, :cond_3

    const-wide/16 v5, 0x3

    mul-long v3, v3, v5

    .line 14
    :cond_3
    iget-boolean v1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->isReloadSyncTag:Z

    if-eqz v1, :cond_4

    const-wide/16 v3, 0x0

    .line 15
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->previousTime:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v3

    if-lez v1, :cond_7

    .line 16
    iput-boolean v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->isWhileAddTag:Z

    .line 17
    iput-boolean v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->isReloadSyncTag:Z

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->previousTime:J

    .line 19
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mWaitingItems:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/manhua/ui/widget/barrage/IBarrageItem;

    if-eqz v0, :cond_6

    .line 20
    invoke-direct {p0, v0}, Lcom/manhua/ui/widget/barrage/BarrageView;->findVacant(Lcom/manhua/ui/widget/barrage/IBarrageItem;)I

    move-result v1

    if-ltz v1, :cond_5

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    iget-object v3, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChannelY:[I

    aget v3, v3, v1

    invoke-interface {v0, v2, v3}, Lcom/manhua/ui/widget/barrage/IBarrageItem;->setStartPosition(II)V

    .line 22
    invoke-interface {v0, p1}, Lcom/manhua/ui/widget/barrage/IBarrageItem;->doDraw(Landroid/graphics/Canvas;)V

    .line 23
    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChannelMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 24
    :cond_5
    invoke-direct {p0, v0}, Lcom/manhua/ui/widget/barrage/BarrageView;->addItemToHead(Lcom/manhua/ui/widget/barrage/IBarrageItem;)V

    goto :goto_2

    .line 25
    :cond_6
    iput-boolean v2, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->isWhileAddTag:Z

    .line 26
    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mWaitingItems:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->size()I

    move-result p1

    if-nez p1, :cond_7

    .line 27
    invoke-direct {p0}, Lcom/manhua/ui/widget/barrage/BarrageView;->whileAddBarrage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    :cond_7
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_5

    .line 30
    :cond_8
    iget v1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->status:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    goto :goto_5

    .line 31
    :cond_9
    iget-object v1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChannelMap:Ljava/util/HashMap;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 32
    :goto_3
    iget-object v1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChannelMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 33
    iget-object v1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChannelMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/manhua/ui/widget/barrage/IBarrageItem;

    .line 36
    invoke-interface {v2}, Lcom/manhua/ui/widget/barrage/IBarrageItem;->isOut()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 38
    :cond_a
    invoke-interface {v2, p1}, Lcom/manhua/ui/widget/barrage/IBarrageItem;->doDraw(Landroid/graphics/Canvas;)V

    goto :goto_4

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_c
    :goto_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-boolean p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->isVisible:Z

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->status:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public reloadSync()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/manhua/ui/widget/barrage/BarrageView;->destory()V

    .line 2
    invoke-virtual {p0}, Lcom/manhua/ui/widget/barrage/BarrageView;->initBarrageView()V

    return-void
.end method

.method public reset()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/manhua/ui/widget/barrage/BarrageView;->clear()V

    .line 2
    invoke-virtual {p0}, Lcom/manhua/ui/widget/barrage/BarrageView;->initBarrageView()V

    return-void
.end method

.method public resume()V
    .locals 2

    const-wide/16 v0, 0x1f4

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/manhua/ui/widget/barrage/BarrageView;->showBarrage(J)V

    return-void
.end method

.method public setChapterId(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChapterId:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mChapterAllBarrages:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/manhua/ui/widget/barrage/BarrageView;->clear()V

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->mHeight:I

    return-void
.end method

.method public showBarrage()V
    .locals 2

    const-wide/16 v0, 0x32

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/manhua/ui/widget/barrage/BarrageView;->showBarrage(J)V

    return-void
.end method

.method public showBarrage(J)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->resumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->resumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    iput v0, p0, Lcom/manhua/ui/widget/barrage/BarrageView;->status:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
