.class public Lcom/youth/banner/Banner;
.super Lcom/apk/sr0;
.source "Banner.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youth/banner/Banner$if;
    }
.end annotation


# instance fields
.field public a:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field public abstract:Lcom/youth/banner/view/BannerViewPager;

.field public b:Lcom/apk/ac0;

.field public break:I

.field public c:Lcom/apk/cc0;

.field public case:I

.field public catch:Z

.field public class:Z

.field public const:I

.field public continue:Landroid/widget/TextView;

.field public d:Landroid/util/DisplayMetrics;

.field public default:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Landroid/view/LayoutInflater;

.field public else:I

.field public extends:Ljava/util/List;

.field public f:Lcom/apk/bc0;

.field public final:I

.field public finally:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public for:I

.field public final g:Ljava/lang/Runnable;

.field public goto:I

.field public h:Z

.field public if:Ljava/lang/String;

.field public implements:Landroid/widget/ImageView;

.field public import:I

.field public instanceof:Lcom/apk/dc0;

.field public interface:Landroid/widget/LinearLayout;

.field public native:I

.field public new:I

.field public package:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field public private:Landroid/content/Context;

.field public protected:Landroid/widget/LinearLayout;

.field public public:I

.field public return:I

.field public static:I

.field public strictfp:Landroid/widget/TextView;

.field public super:I

.field public switch:I

.field public synchronized:Lcom/youth/banner/Banner$if;

.field public this:I

.field public throw:I

.field public throws:I

.field public transient:Landroid/widget/LinearLayout;

.field public try:I

.field public volatile:Landroid/widget/TextView;

.field public while:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/apk/sr0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v1, "view_banner"

    .line 2
    iput-object v1, p0, Lcom/youth/banner/Banner;->if:Ljava/lang/String;

    const/4 v1, 0x5

    .line 3
    iput v1, p0, Lcom/youth/banner/Banner;->for:I

    const/4 v2, 0x1

    .line 4
    iput v2, p0, Lcom/youth/banner/Banner;->goto:I

    const/16 v3, 0x7d0

    .line 5
    iput v3, p0, Lcom/youth/banner/Banner;->this:I

    const/16 v4, 0x320

    .line 6
    iput v4, p0, Lcom/youth/banner/Banner;->break:I

    .line 7
    iput-boolean v2, p0, Lcom/youth/banner/Banner;->catch:Z

    .line 8
    iput-boolean v2, p0, Lcom/youth/banner/Banner;->class:Z

    const v5, 0x7f080321

    .line 9
    iput v5, p0, Lcom/youth/banner/Banner;->const:I

    const v6, 0x7f080326

    .line 10
    iput v6, p0, Lcom/youth/banner/Banner;->final:I

    const v7, 0x7f0c01b3

    .line 11
    iput v7, p0, Lcom/youth/banner/Banner;->super:I

    .line 12
    iput v0, p0, Lcom/youth/banner/Banner;->public:I

    const/4 v7, -0x1

    .line 13
    iput v7, p0, Lcom/youth/banner/Banner;->static:I

    .line 14
    iput v2, p0, Lcom/youth/banner/Banner;->switch:I

    .line 15
    iput v2, p0, Lcom/youth/banner/Banner;->throws:I

    .line 16
    new-instance v8, Lcom/apk/bc0;

    invoke-direct {v8}, Lcom/apk/bc0;-><init>()V

    iput-object v8, p0, Lcom/youth/banner/Banner;->f:Lcom/apk/bc0;

    .line 17
    new-instance v8, Lcom/youth/banner/Banner$do;

    invoke-direct {v8, p0}, Lcom/youth/banner/Banner$do;-><init>(Lcom/youth/banner/Banner;)V

    iput-object v8, p0, Lcom/youth/banner/Banner;->g:Ljava/lang/Runnable;

    .line 18
    iput-boolean v2, p0, Lcom/youth/banner/Banner;->h:Z

    .line 19
    iput-object p1, p0, Lcom/youth/banner/Banner;->private:Landroid/content/Context;

    .line 20
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/youth/banner/Banner;->default:Ljava/util/List;

    .line 21
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/youth/banner/Banner;->extends:Ljava/util/List;

    .line 22
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/youth/banner/Banner;->finally:Ljava/util/List;

    .line 23
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/youth/banner/Banner;->package:Ljava/util/List;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iput-object v8, p0, Lcom/youth/banner/Banner;->d:Landroid/util/DisplayMetrics;

    .line 25
    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v8, v8, 0x50

    iput v8, p0, Lcom/youth/banner/Banner;->case:I

    .line 26
    iget-object v8, p0, Lcom/youth/banner/Banner;->finally:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 27
    :cond_0
    sget-object v8, Lcom/biquge/ebook/app/R$styleable;->Banner:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 v8, 0x8

    .line 28
    iget v9, p0, Lcom/youth/banner/Banner;->case:I

    invoke-virtual {p2, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Lcom/youth/banner/Banner;->new:I

    const/4 v8, 0x6

    .line 29
    iget v9, p0, Lcom/youth/banner/Banner;->case:I

    invoke-virtual {p2, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Lcom/youth/banner/Banner;->try:I

    const/4 v8, 0x7

    .line 30
    invoke-virtual {p2, v8, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Lcom/youth/banner/Banner;->for:I

    const/4 v8, 0x4

    .line 31
    invoke-virtual {p2, v8, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/youth/banner/Banner;->const:I

    .line 32
    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/youth/banner/Banner;->final:I

    const/4 v1, 0x3

    .line 33
    iget v5, p0, Lcom/youth/banner/Banner;->throws:I

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/youth/banner/Banner;->throws:I

    const/4 v1, 0x2

    .line 34
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/youth/banner/Banner;->this:I

    const/16 v1, 0xa

    .line 35
    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/youth/banner/Banner;->break:I

    const/16 v1, 0x9

    .line 36
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/youth/banner/Banner;->catch:Z

    const/16 v1, 0xb

    .line 37
    invoke-virtual {p2, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/youth/banner/Banner;->while:I

    const/16 v1, 0xc

    .line 38
    invoke-virtual {p2, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/youth/banner/Banner;->throw:I

    const/16 v1, 0xd

    .line 39
    invoke-virtual {p2, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/youth/banner/Banner;->import:I

    const/16 v1, 0xe

    .line 40
    invoke-virtual {p2, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/youth/banner/Banner;->native:I

    .line 41
    iget v1, p0, Lcom/youth/banner/Banner;->super:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/youth/banner/Banner;->super:I

    .line 42
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/youth/banner/Banner;->else:I

    .line 43
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/youth/banner/Banner;->e:Landroid/view/LayoutInflater;

    .line 45
    iget p2, p0, Lcom/youth/banner/Banner;->super:I

    invoke-virtual {p1, p2, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900be

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/youth/banner/Banner;->implements:Landroid/widget/ImageView;

    const p2, 0x7f0900c0

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/youth/banner/view/BannerViewPager;

    iput-object p2, p0, Lcom/youth/banner/Banner;->abstract:Lcom/youth/banner/view/BannerViewPager;

    const p2, 0x7f090561

    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/youth/banner/Banner;->transient:Landroid/widget/LinearLayout;

    const p2, 0x7f090157

    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/youth/banner/Banner;->interface:Landroid/widget/LinearLayout;

    const p2, 0x7f0902a2

    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/youth/banner/Banner;->protected:Landroid/widget/LinearLayout;

    const p2, 0x7f0900bf

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/youth/banner/Banner;->continue:Landroid/widget/TextView;

    const p2, 0x7f0903f8

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/youth/banner/Banner;->volatile:Landroid/widget/TextView;

    const p2, 0x7f0903f9

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/youth/banner/Banner;->strictfp:Landroid/widget/TextView;

    .line 54
    iget-object p1, p0, Lcom/youth/banner/Banner;->implements:Landroid/widget/ImageView;

    iget p2, p0, Lcom/youth/banner/Banner;->else:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    :try_start_0
    const-class p1, Landroidx/viewpager/widget/ViewPager;

    const-string p2, "mScroller"

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 56
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 57
    new-instance p2, Lcom/apk/ac0;

    iget-object v0, p0, Lcom/youth/banner/Banner;->abstract:Lcom/youth/banner/view/BannerViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/apk/ac0;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/youth/banner/Banner;->b:Lcom/apk/ac0;

    .line 58
    iget v0, p0, Lcom/youth/banner/Banner;->break:I

    .line 59
    iput v0, p2, Lcom/apk/ac0;->do:I

    .line 60
    iget-object v0, p0, Lcom/youth/banner/Banner;->abstract:Lcom/youth/banner/view/BannerViewPager;

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private setImageList(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_9

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/youth/banner/Banner;->implements:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v1, p0, Lcom/youth/banner/Banner;->finally:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4
    iget v1, p0, Lcom/youth/banner/Banner;->goto:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_3

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    const-string v3, "1/"

    if-ne v1, v2, :cond_2

    .line 5
    iget-object v1, p0, Lcom/youth/banner/Banner;->strictfp:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/youth/banner/Banner;->public:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 6
    iget-object v1, p0, Lcom/youth/banner/Banner;->volatile:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/youth/banner/Banner;->public:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 7
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/youth/banner/Banner;->package:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 8
    iget-object v1, p0, Lcom/youth/banner/Banner;->interface:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 9
    iget-object v1, p0, Lcom/youth/banner/Banner;->protected:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v1, 0x0

    .line 10
    :goto_1
    iget v5, p0, Lcom/youth/banner/Banner;->public:I

    if-ge v1, v5, :cond_8

    .line 11
    new-instance v5, Lcom/apk/ec0;

    iget-object v6, p0, Lcom/youth/banner/Banner;->private:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/apk/ec0;-><init>(Landroid/content/Context;)V

    .line 12
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 13
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, p0, Lcom/youth/banner/Banner;->new:I

    iget v8, p0, Lcom/youth/banner/Banner;->try:I

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 14
    iget v7, p0, Lcom/youth/banner/Banner;->for:I

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 15
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    if-nez v1, :cond_4

    .line 16
    iget v7, p0, Lcom/youth/banner/Banner;->const:I

    invoke-virtual {v5, v7}, Lcom/apk/ec0;->setImageResource(I)V

    goto :goto_2

    .line 17
    :cond_4
    iget v7, p0, Lcom/youth/banner/Banner;->final:I

    invoke-virtual {v5, v7}, Lcom/apk/ec0;->setImageResource(I)V

    .line 18
    :goto_2
    iget-object v7, p0, Lcom/youth/banner/Banner;->package:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget v7, p0, Lcom/youth/banner/Banner;->goto:I

    if-eq v7, v4, :cond_6

    if-ne v7, v3, :cond_5

    goto :goto_3

    :cond_5
    if-ne v7, v2, :cond_7

    .line 20
    iget-object v7, p0, Lcom/youth/banner/Banner;->protected:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 21
    :cond_6
    :goto_3
    iget-object v7, p0, Lcom/youth/banner/Banner;->interface:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    :goto_5
    const/4 v1, 0x0

    .line 22
    :goto_6
    iget v2, p0, Lcom/youth/banner/Banner;->public:I

    add-int/2addr v2, v4

    if-gt v1, v2, :cond_e

    .line 23
    iget-object v2, p0, Lcom/youth/banner/Banner;->e:Landroid/view/LayoutInflater;

    const v3, 0x7f0c01b4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0902b0

    .line 24
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-nez v1, :cond_9

    .line 25
    iget v6, p0, Lcom/youth/banner/Banner;->public:I

    sub-int/2addr v6, v4

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_7

    .line 26
    :cond_9
    iget v6, p0, Lcom/youth/banner/Banner;->public:I

    add-int/2addr v6, v4

    if-ne v1, v6, :cond_a

    .line 27
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_7

    :cond_a
    add-int/lit8 v6, v1, -0x1

    .line 28
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 29
    :goto_7
    iget-object v7, p0, Lcom/youth/banner/Banner;->finally:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v2, p0, Lcom/youth/banner/Banner;->instanceof:Lcom/apk/dc0;

    if-eqz v2, :cond_d

    .line 31
    check-cast v2, Lcom/apk/mg;

    if-eqz v2, :cond_c

    .line 32
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 33
    iget-boolean v2, v2, Lcom/apk/mg;->do:Z

    if-eqz v2, :cond_b

    .line 34
    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v3, v0}, Lcom/apk/u;->throw(Ljava/lang/String;Landroid/widget/ImageView;Z)V

    goto :goto_8

    .line 35
    :cond_b
    check-cast v6, Ljava/lang/String;

    const v2, 0x7f080223

    .line 36
    invoke-static {v6, v3, v2, v0}, Lcom/apk/u;->native(Ljava/lang/String;Landroid/widget/ImageView;IZ)V

    goto :goto_8

    .line 37
    :cond_c
    throw v5

    :cond_d
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_e
    return-void

    .line 38
    :cond_f
    :goto_9
    iget-object p1, p0, Lcom/youth/banner/Banner;->implements:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setScaleType(Landroid/view/View;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/widget/ImageView;

    .line 3
    iget v0, p0, Lcom/youth/banner/Banner;->throws:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 5
    :pswitch_1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 6
    :pswitch_2
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 7
    :pswitch_3
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 8
    :pswitch_4
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 9
    :pswitch_5
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 10
    :pswitch_6
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 11
    :pswitch_7
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public case()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/youth/banner/Banner;->f:Lcom/apk/bc0;

    iget-object v1, p0, Lcom/youth/banner/Banner;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/apk/bc0;->do(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/youth/banner/Banner;->f:Lcom/apk/bc0;

    iget-object v1, p0, Lcom/youth/banner/Banner;->g:Ljava/lang/Runnable;

    iget v2, p0, Lcom/youth/banner/Banner;->this:I

    int-to-long v2, v2

    .line 3
    iget-object v4, v0, Lcom/apk/bc0;->do:Lcom/apk/bc0$if;

    invoke-virtual {v0, v1}, Lcom/apk/bc0;->if(Ljava/lang/Runnable;)Lcom/apk/bc0$for;

    move-result-object v0

    invoke-virtual {v4, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/youth/banner/Banner;->catch:Z

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->else()V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->case()V

    .line 5
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public do()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/sr0;->do()V

    .line 2
    :try_start_0
    iget v0, p0, Lcom/youth/banner/Banner;->public:I

    if-lez v0, :cond_0

    .line 3
    iget v0, p0, Lcom/youth/banner/Banner;->return:I

    invoke-virtual {p0, v0}, Lcom/youth/banner/Banner;->onPageSelected(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public else()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/youth/banner/Banner;->f:Lcom/apk/bc0;

    iget-object v1, p0, Lcom/youth/banner/Banner;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/apk/bc0;->do(Ljava/lang/Runnable;)V

    return-void
.end method

.method public for(I)Lcom/youth/banner/Banner;
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x800015

    .line 1
    iput p1, p0, Lcom/youth/banner/Banner;->static:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x11

    .line 2
    iput p1, p0, Lcom/youth/banner/Banner;->static:I

    goto :goto_0

    :cond_2
    const p1, 0x800013

    .line 3
    iput p1, p0, Lcom/youth/banner/Banner;->static:I

    :goto_0
    return-object p0
.end method

.method public getBannerPager()Landroidx/viewpager/widget/ViewPager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/youth/banner/Banner;->abstract:Lcom/youth/banner/view/BannerViewPager;

    return-object v0
.end method

.method public goto(I)I
    .locals 1

    add-int/lit8 p1, p1, -0x1

    .line 1
    iget v0, p0, Lcom/youth/banner/Banner;->public:I

    rem-int/2addr p1, v0

    if-gez p1, :cond_0

    add-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method public if(Lcom/apk/dc0;)Lcom/youth/banner/Banner;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/youth/banner/Banner;->instanceof:Lcom/apk/dc0;

    return-object p0
.end method

.method public final new()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/youth/banner/Banner;->default:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/youth/banner/Banner;->extends:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 2
    iget v0, p0, Lcom/youth/banner/Banner;->while:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/youth/banner/Banner;->transient:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 4
    :cond_0
    iget v0, p0, Lcom/youth/banner/Banner;->throw:I

    if-eq v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/youth/banner/Banner;->transient:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/youth/banner/Banner;->throw:I

    invoke-direct {v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    :cond_1
    iget v0, p0, Lcom/youth/banner/Banner;->import:I

    if-eq v0, v1, :cond_2

    .line 7
    iget-object v2, p0, Lcom/youth/banner/Banner;->continue:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    :cond_2
    iget v0, p0, Lcom/youth/banner/Banner;->native:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    .line 9
    iget-object v1, p0, Lcom/youth/banner/Banner;->continue:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/youth/banner/Banner;->default:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/youth/banner/Banner;->continue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youth/banner/Banner;->default:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/youth/banner/Banner;->continue:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/youth/banner/Banner;->transient:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    return-void

    .line 14
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "[Banner] --> The number of titles and images is different"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/youth/banner/Banner;->a:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget p1, p0, Lcom/youth/banner/Banner;->return:I

    iget v2, p0, Lcom/youth/banner/Banner;->public:I

    add-int/lit8 v3, v2, 0x1

    if-ne p1, v3, :cond_2

    .line 4
    iget-object p1, p0, Lcom/youth/banner/Banner;->abstract:Lcom/youth/banner/view/BannerViewPager;

    invoke-virtual {p1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_5

    .line 5
    iget-object p1, p0, Lcom/youth/banner/Banner;->abstract:Lcom/youth/banner/view/BannerViewPager;

    invoke-virtual {p1, v2, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 6
    :cond_3
    iget p1, p0, Lcom/youth/banner/Banner;->return:I

    if-nez p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/youth/banner/Banner;->abstract:Lcom/youth/banner/view/BannerViewPager;

    iget v1, p0, Lcom/youth/banner/Banner;->public:I

    invoke-virtual {p1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 8
    :cond_4
    iget v2, p0, Lcom/youth/banner/Banner;->public:I

    add-int/2addr v2, v1

    if-ne p1, v2, :cond_5

    .line 9
    iget-object p1, p0, Lcom/youth/banner/Banner;->abstract:Lcom/youth/banner/view/BannerViewPager;

    invoke-virtual {p1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/youth/banner/Banner;->a:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 2
    iget v1, p0, Lcom/youth/banner/Banner;->public:I

    rem-int/2addr p1, v1

    if-gez p1, :cond_0

    add-int/2addr p1, v1

    .line 3
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    .line 1
    iput p1, p0, Lcom/youth/banner/Banner;->return:I

    .line 2
    iget-object v0, p0, Lcom/youth/banner/Banner;->a:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    add-int/lit8 v1, p1, -0x1

    .line 3
    iget v2, p0, Lcom/youth/banner/Banner;->public:I

    rem-int/2addr v1, v2

    if-gez v1, :cond_0

    add-int/2addr v1, v2

    .line 4
    :cond_0
    invoke-interface {v0, v1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 5
    :cond_1
    iget v0, p0, Lcom/youth/banner/Banner;->goto:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_3

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/youth/banner/Banner;->package:Ljava/util/List;

    iget v4, p0, Lcom/youth/banner/Banner;->switch:I

    sub-int/2addr v4, v3

    iget v5, p0, Lcom/youth/banner/Banner;->public:I

    add-int/2addr v4, v5

    rem-int/2addr v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v4, p0, Lcom/youth/banner/Banner;->final:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    iget-object v0, p0, Lcom/youth/banner/Banner;->package:Ljava/util/List;

    add-int/lit8 v4, p1, -0x1

    iget v5, p0, Lcom/youth/banner/Banner;->public:I

    add-int/2addr v4, v5

    rem-int/2addr v4, v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v4, p0, Lcom/youth/banner/Banner;->const:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    iput p1, p0, Lcom/youth/banner/Banner;->switch:I

    :cond_3
    if-nez p1, :cond_4

    .line 9
    iget p1, p0, Lcom/youth/banner/Banner;->public:I

    .line 10
    :cond_4
    iget v0, p0, Lcom/youth/banner/Banner;->public:I

    if-le p1, v0, :cond_5

    const/4 p1, 0x1

    .line 11
    :cond_5
    iget v0, p0, Lcom/youth/banner/Banner;->goto:I

    const/4 v4, 0x2

    const-string v5, "/"

    if-eq v0, v4, :cond_9

    const/4 v4, 0x3

    if-eq v0, v4, :cond_8

    if-eq v0, v2, :cond_7

    if-eq v0, v1, :cond_6

    goto :goto_0

    .line 12
    :cond_6
    iget-object v0, p0, Lcom/youth/banner/Banner;->continue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youth/banner/Banner;->default:Ljava/util/List;

    sub-int/2addr p1, v3

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 13
    :cond_7
    iget-object v0, p0, Lcom/youth/banner/Banner;->continue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youth/banner/Banner;->default:Ljava/util/List;

    sub-int/2addr p1, v3

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :cond_8
    iget-object v0, p0, Lcom/youth/banner/Banner;->strictfp:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/youth/banner/Banner;->public:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/youth/banner/Banner;->continue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youth/banner/Banner;->default:Ljava/util/List;

    sub-int/2addr p1, v3

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 16
    :cond_9
    iget-object v0, p0, Lcom/youth/banner/Banner;->volatile:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/youth/banner/Banner;->public:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setEffective(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/youth/banner/Banner;->h:Z

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/youth/banner/Banner;->a:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public try()Lcom/youth/banner/Banner;
    .locals 5

    .line 1
    iget v0, p0, Lcom/youth/banner/Banner;->public:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 2
    :goto_0
    iget v3, p0, Lcom/youth/banner/Banner;->goto:I

    if-eq v3, v2, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v3, p0, Lcom/youth/banner/Banner;->protected:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->new()V

    goto :goto_1

    .line 5
    :cond_2
    iget-object v3, p0, Lcom/youth/banner/Banner;->interface:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->new()V

    goto :goto_1

    .line 7
    :cond_3
    iget-object v3, p0, Lcom/youth/banner/Banner;->strictfp:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->new()V

    goto :goto_1

    .line 9
    :cond_4
    iget-object v3, p0, Lcom/youth/banner/Banner;->volatile:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 10
    :cond_5
    iget-object v3, p0, Lcom/youth/banner/Banner;->interface:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    :goto_1
    iget-object v0, p0, Lcom/youth/banner/Banner;->extends:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/youth/banner/Banner;->setImageList(Ljava/util/List;)V

    .line 12
    iput v2, p0, Lcom/youth/banner/Banner;->return:I

    .line 13
    iget-object v0, p0, Lcom/youth/banner/Banner;->synchronized:Lcom/youth/banner/Banner$if;

    if-nez v0, :cond_6

    .line 14
    new-instance v0, Lcom/youth/banner/Banner$if;

    invoke-direct {v0, p0}, Lcom/youth/banner/Banner$if;-><init>(Lcom/youth/banner/Banner;)V

    iput-object v0, p0, Lcom/youth/banner/Banner;->synchronized:Lcom/youth/banner/Banner$if;

    .line 15
    iget-object v0, p0, Lcom/youth/banner/Banner;->abstract:Lcom/youth/banner/view/BannerViewPager;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/youth/banner/Banner;->abstract:Lcom/youth/banner/view/BannerViewPager;

    iget-object v3, p0, Lcom/youth/banner/Banner;->synchronized:Lcom/youth/banner/Banner$if;

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 17
    iget-object v0, p0, Lcom/youth/banner/Banner;->abstract:Lcom/youth/banner/view/BannerViewPager;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 18
    iget-object v0, p0, Lcom/youth/banner/Banner;->abstract:Lcom/youth/banner/view/BannerViewPager;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 19
    iget v0, p0, Lcom/youth/banner/Banner;->static:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_7

    .line 20
    iget-object v3, p0, Lcom/youth/banner/Banner;->interface:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 21
    :cond_7
    iget-boolean v0, p0, Lcom/youth/banner/Banner;->class:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/youth/banner/Banner;->public:I

    if-le v0, v2, :cond_8

    .line 22
    iget-object v0, p0, Lcom/youth/banner/Banner;->abstract:Lcom/youth/banner/view/BannerViewPager;

    invoke-virtual {v0, v2}, Lcom/youth/banner/view/BannerViewPager;->setScrollable(Z)V

    goto :goto_2

    .line 23
    :cond_8
    iget-object v0, p0, Lcom/youth/banner/Banner;->abstract:Lcom/youth/banner/view/BannerViewPager;

    invoke-virtual {v0, v1}, Lcom/youth/banner/view/BannerViewPager;->setScrollable(Z)V

    .line 24
    :goto_2
    iget-boolean v0, p0, Lcom/youth/banner/Banner;->catch:Z

    if-eqz v0, :cond_9

    .line 25
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->case()V

    :cond_9
    return-object p0
.end method

.method public update(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/youth/banner/Banner;->extends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/youth/banner/Banner;->finally:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lcom/youth/banner/Banner;->package:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    iget-object v0, p0, Lcom/youth/banner/Banner;->extends:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    iget-object p1, p0, Lcom/youth/banner/Banner;->extends:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/youth/banner/Banner;->public:I

    .line 9
    invoke-virtual {p0}, Lcom/youth/banner/Banner;->try()Lcom/youth/banner/Banner;

    return-void
.end method

.method public update(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/youth/banner/Banner;->default:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/youth/banner/Banner;->default:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {p0, p1}, Lcom/youth/banner/Banner;->update(Ljava/util/List;)V

    return-void
.end method
