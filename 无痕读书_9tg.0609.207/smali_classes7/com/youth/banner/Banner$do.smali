.class public Lcom/youth/banner/Banner$do;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youth/banner/Banner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/youth/banner/Banner;


# direct methods
.method public constructor <init>(Lcom/youth/banner/Banner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/youth/banner/Banner$do;->do:Lcom/youth/banner/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/youth/banner/Banner$do;->do:Lcom/youth/banner/Banner;

    .line 2
    iget v1, v0, Lcom/youth/banner/Banner;->public:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    .line 3
    iget-boolean v1, v0, Lcom/youth/banner/Banner;->catch:Z

    if-eqz v1, :cond_5

    .line 4
    iget-object v1, v0, Lcom/youth/banner/Banner;->abstract:Lcom/youth/banner/view/BannerViewPager;

    .line 5
    iget-boolean v1, v1, Lcom/youth/banner/view/BannerViewPager;->if:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 6
    iget-boolean v0, v0, Lcom/youth/banner/Banner;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lcom/youth/banner/Banner$do;->do:Lcom/youth/banner/Banner;

    .line 8
    iget v4, v1, Lcom/youth/banner/Banner;->return:I

    .line 9
    iget v5, v1, Lcom/youth/banner/Banner;->public:I

    add-int/2addr v5, v2

    .line 10
    rem-int/2addr v4, v5

    add-int/2addr v4, v2

    .line 11
    iput v4, v1, Lcom/youth/banner/Banner;->return:I

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/youth/banner/Banner$do;->do:Lcom/youth/banner/Banner;

    .line 13
    iget v4, v1, Lcom/youth/banner/Banner;->return:I

    if-ne v4, v2, :cond_3

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, v1, Lcom/youth/banner/Banner;->abstract:Lcom/youth/banner/view/BannerViewPager;

    .line 15
    invoke-virtual {v0, v4, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/youth/banner/Banner$do;->do:Lcom/youth/banner/Banner;

    .line 17
    iget-object v1, v0, Lcom/youth/banner/Banner;->f:Lcom/apk/bc0;

    .line 18
    iget-object v0, v0, Lcom/youth/banner/Banner;->g:Ljava/lang/Runnable;

    .line 19
    iget-object v2, v1, Lcom/apk/bc0;->do:Lcom/apk/bc0$if;

    invoke-virtual {v1, v0}, Lcom/apk/bc0;->if(Ljava/lang/Runnable;)Lcom/apk/bc0$for;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 20
    iget-object v0, v1, Lcom/youth/banner/Banner;->abstract:Lcom/youth/banner/view/BannerViewPager;

    .line 21
    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 22
    :cond_4
    iget-object v0, p0, Lcom/youth/banner/Banner$do;->do:Lcom/youth/banner/Banner;

    .line 23
    iget-object v1, v0, Lcom/youth/banner/Banner;->f:Lcom/apk/bc0;

    .line 24
    iget-object v2, v0, Lcom/youth/banner/Banner;->g:Ljava/lang/Runnable;

    .line 25
    iget v0, v0, Lcom/youth/banner/Banner;->this:I

    int-to-long v3, v0

    .line 26
    iget-object v0, v1, Lcom/apk/bc0;->do:Lcom/apk/bc0$if;

    invoke-virtual {v1, v2}, Lcom/apk/bc0;->if(Ljava/lang/Runnable;)Lcom/apk/bc0$for;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_1
    return-void
.end method
