.class public Lcom/manhua/ui/activity/ComicUpdateActivity;
.super Lcom/apk/f6;
.source "ComicUpdateActivity.java"


# static fields
.field public static final for:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public do:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

.field public if:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/manhua/ui/activity/ComicUpdateActivity;->for:Ljava/util/Map;

    const-string v1, "\u5468\u4e00"

    const-string v2, "1"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/manhua/ui/activity/ComicUpdateActivity;->for:Ljava/util/Map;

    const-string v1, "\u5468\u4e8c"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/manhua/ui/activity/ComicUpdateActivity;->for:Ljava/util/Map;

    const-string v1, "\u5468\u4e09"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/manhua/ui/activity/ComicUpdateActivity;->for:Ljava/util/Map;

    const-string v1, "\u5468\u56db"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/manhua/ui/activity/ComicUpdateActivity;->for:Ljava/util/Map;

    const-string v1, "\u5468\u4e94"

    const-string v2, "5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/manhua/ui/activity/ComicUpdateActivity;->for:Ljava/util/Map;

    const-string v1, "\u5468\u516d"

    const-string v2, "6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/manhua/ui/activity/ComicUpdateActivity;->for:Ljava/util/Map;

    const-string v1, "\u5468\u65e5"

    const-string v2, "7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c008a

    return v0
.end method

.method public initData()V
    .locals 11

    const/4 v0, 0x7

    .line 1
    invoke-static {v0}, Lcom/apk/kg;->case(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3
    new-array v3, v2, [Ljava/lang/String;

    .line 4
    new-array v4, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_0

    .line 5
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, ""

    .line 6
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 7
    :try_start_0
    invoke-virtual {v9, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 8
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "EEEE"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v9, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "\u661f\u671f"

    const-string v9, "\u5468"

    .line 10
    invoke-virtual {v8, v7, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    .line 11
    invoke-virtual {v7}, Ljava/text/ParseException;->printStackTrace()V

    move-object v7, v8

    .line 12
    :goto_1
    aput-object v7, v3, v6

    .line 13
    sget-object v8, Lcom/manhua/ui/activity/ComicUpdateActivity;->for:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v2, -0x1

    const v6, 0x7f1000f7

    .line 14
    invoke-static {v6}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    add-int/lit8 v1, v2, -0x2

    const v6, 0x7f1000f8

    .line 15
    invoke-static {v6}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    if-ge v5, v2, :cond_1

    .line 17
    aget-object v6, v4, v5

    .line 18
    new-instance v7, Lcom/manhua/ui/fragment/ComicUpdateFragment;

    invoke-direct {v7}, Lcom/manhua/ui/fragment/ComicUpdateFragment;-><init>()V

    .line 19
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v9, "UPDATE_DATE_KEY"

    .line 20
    invoke-virtual {v8, v9, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v7, v8}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    const/high16 v4, 0x42700000    # 60.0f

    .line 23
    invoke-static {v4}, Lcom/apk/eg;->catch(F)I

    move-result v4

    .line 24
    invoke-static {}, Lcom/apk/eg;->switch()I

    move-result v5

    div-int/2addr v5, v2

    if-le v5, v4, :cond_2

    const/high16 v2, 0x42960000    # 75.0f

    .line 25
    invoke-static {v2}, Lcom/apk/eg;->catch(F)I

    move-result v2

    if-ge v5, v2, :cond_2

    move v4, v5

    .line 26
    :cond_2
    iget-object v2, p0, Lcom/manhua/ui/activity/ComicUpdateActivity;->do:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    new-instance v5, Lcom/apk/nz;

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {v5, p0, v0, v4}, Lcom/apk/nz;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    invoke-virtual {v2, v5}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setAdapter(Lcom/apk/b40$if;)V

    .line 27
    new-instance v0, Lcom/apk/e40;

    iget-object v2, p0, Lcom/manhua/ui/activity/ComicUpdateActivity;->do:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iget-object v4, p0, Lcom/manhua/ui/activity/ComicUpdateActivity;->if:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {v0, v2, v4}, Lcom/apk/e40;-><init>(Lcom/apk/b40;Landroidx/viewpager/widget/ViewPager;)V

    .line 28
    new-instance v2, Lcom/apk/y30;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-direct {v2, v4, v3, v1}, Lcom/apk/y30;-><init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/apk/e40;->do(Lcom/apk/e40$if;)V

    .line 29
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicUpdateActivity;->if:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public initView()V
    .locals 3

    const v0, 0x7f09018a

    const v1, 0x7f1000f6

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/apk/f6;->initTopBarOnlyTitle(II)V

    const v0, 0x7f09018b

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicUpdateActivity;->do:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setSplitAuto(Z)V

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicUpdateActivity;->do:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const/16 v1, 0x23

    const/16 v2, 0xe

    invoke-static {p0, v0, v1, v2}, Lcom/apk/ze;->u(Landroid/content/Context;Lcom/apk/b40;II)V

    const v0, 0x7f09018d

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicUpdateActivity;->if:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x7

    .line 6
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method
