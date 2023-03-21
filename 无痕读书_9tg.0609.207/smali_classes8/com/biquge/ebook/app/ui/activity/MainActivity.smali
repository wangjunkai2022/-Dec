.class public Lcom/biquge/ebook/app/ui/activity/MainActivity;
.super Lcom/apk/h6;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# instance fields
.field public break:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

.field public case:F

.field public catch:Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;

.field public class:Lcom/biquge/ebook/app/ui/fragment/MainCategoryFragment;

.field public const:Lcom/biquge/ebook/app/ui/fragment/InfoFragment;

.field public else:Ljava/lang/String;

.field public final:Lcom/apk/xp0;

.field public goto:Lcom/biquge/ebook/app/bean/DiscoverBean;

.field public import:Lcom/apk/x4;

.field public mBottomNavigationView:Lcom/biquge/ebook/app/widget/MainBottomNavigationView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090079
    .end annotation
.end field

.field public mContinueReadLayout:Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090391
    .end annotation
.end field

.field public mSViewPager:Lcom/shizhefei/view/viewpager/SViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090238
    .end annotation
.end field

.field public final native:Lcom/apk/w5;

.field public public:Z

.field public return:Z

.field public static:Z

.field public super:Lcom/apk/xp0;

.field public switch:Z

.field public this:Lcom/biquge/ebook/app/bean/NewShareDisBean;

.field public throw:Lcom/apk/xp0;

.field public throws:Lcom/apk/c60;

.field public while:Lcom/apk/xp0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/h6;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->goto:Lcom/biquge/ebook/app/bean/DiscoverBean;

    .line 3
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->this:Lcom/biquge/ebook/app/bean/NewShareDisBean;

    .line 4
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/MainActivity$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/activity/MainActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->native:Lcom/apk/w5;

    return-void
.end method

.method public static synthetic l(Lcom/biquge/ebook/app/ui/activity/MainActivity;)Lcom/biquge/ebook/app/ui/fragment/HomeFragment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->break:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    return-object p0
.end method

.method public static synthetic m(Lcom/biquge/ebook/app/ui/activity/MainActivity;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/activity/MainActivity;->r(Z)V

    return-void
.end method

.method public static n(Lorg/json/JSONArray;Z)Lcom/biquge/ebook/app/bean/ConfigMessage;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 3
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "id"

    .line 4
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v5, "insappgid"

    .line 5
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-static {v5}, Lcom/apk/ze;->G(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    const-class v5, Lcom/biquge/ebook/app/bean/ConfigMessage;

    invoke-static {v5, v4}, Lcom/apk/ze;->n0(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biquge/ebook/app/bean/ConfigMessage;

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    const-string p0, "SP_HOME_HAIBAO_TEXT_POSITION_KEY"

    goto :goto_2

    :cond_3
    const-string p0, "SP_HOME_HAIBAO_IMAGE_POSITION_KEY"

    .line 9
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 10
    invoke-static {p0, v2}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result p1

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_4

    .line 12
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p1, p0, v2}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    :cond_4
    move v2, p1

    .line 13
    :goto_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/biquge/ebook/app/bean/ConfigMessage;

    goto :goto_4

    :cond_5
    const/4 p0, 0x0

    :goto_4
    return-object p0
.end method

.method public static o(Lcom/biquge/ebook/app/ui/activity/MainActivity;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    new-instance v1, Lcom/apk/c60;

    new-instance v2, Lcom/apk/b8;

    const-string v3, "pupinsert"

    invoke-direct {v2, p0, v3}, Lcom/apk/b8;-><init>(Lcom/biquge/ebook/app/ui/activity/MainActivity;Ljava/lang/String;)V

    invoke-direct {v1, p0, v2, v3}, Lcom/apk/c60;-><init>(Landroid/app/Activity;Lcom/apk/v60;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->throws:Lcom/apk/c60;

    .line 2
    invoke-virtual {v1}, Lcom/apk/c60;->try()V

    .line 3
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p0

    if-eqz p0, :cond_0

    return-void

    .line 4
    :cond_0
    throw v0

    .line 5
    :cond_1
    throw v0
.end method

.method public static synthetic p(Lcom/biquge/ebook/app/ui/activity/MainActivity;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/MainActivity;->q()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c0045

    return v0
.end method

.method public init(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/apk/h6;->init(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    const/4 v0, 0x1

    .line 3
    iput v0, p1, Lcom/biquge/ebook/app/app/AppContext;->new:I

    .line 4
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public initData()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/apk/h6;->initData()V

    .line 2
    new-instance v0, Lcom/apk/x4;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->native:Lcom/apk/w5;

    invoke-direct {v0, p0, v1}, Lcom/apk/x4;-><init>(Landroid/app/Activity;Lcom/apk/w5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->import:Lcom/apk/x4;

    .line 3
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/apk/continue;->import:Lcom/biquge/ebook/app/bean/DiscoverBean;

    .line 5
    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->goto:Lcom/biquge/ebook/app/bean/DiscoverBean;

    .line 6
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/continue;->for()Lcom/biquge/ebook/app/bean/NewShareDisBean;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->this:Lcom/biquge/ebook/app/bean/NewShareDisBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/NewShareDisBean;->isOnlyCheckTime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->this:Lcom/biquge/ebook/app/bean/NewShareDisBean;

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/MainActivity;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x41700000    # 15.0f

    .line 10
    iput v0, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->case:F

    goto :goto_0

    :cond_1
    const/high16 v0, 0x41b00000    # 22.0f

    .line 11
    iput v0, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->case:F

    :goto_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 12
    :try_start_0
    invoke-static {}, Lcom/apk/ze;->B()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/apk/ze;->C()Z

    move-result v3

    if-nez v3, :cond_2

    .line 13
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->mSViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-static {v3, v2}, Lcom/apk/ze;->a0(Landroidx/viewpager/widget/ViewPager;I)V

    .line 14
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/activity/MainActivity;->v(Z)V

    .line 15
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->mBottomNavigationView:Lcom/biquge/ebook/app/widget/MainBottomNavigationView;

    new-instance v4, Lcom/apk/u6;

    invoke-direct {v4, p0}, Lcom/apk/u6;-><init>(Lcom/biquge/ebook/app/ui/activity/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 16
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->mSViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    new-instance v4, Lcom/apk/w7;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/apk/w7;-><init>(Lcom/biquge/ebook/app/ui/activity/MainActivity;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 18
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->mSViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->mSViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x5

    :goto_2
    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 19
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->mBottomNavigationView:Lcom/biquge/ebook/app/widget/MainBottomNavigationView;

    invoke-virtual {v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const v4, 0x7f09039a

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 20
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/MainActivity;->q()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 21
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->else:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 22
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 23
    :cond_4
    iget-object v4, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->this:Lcom/biquge/ebook/app/bean/NewShareDisBean;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/NewShareDisBean;->is_tab_show()Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, 0x7f0801a9

    .line 24
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 25
    :cond_5
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 26
    :cond_6
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_7
    :goto_3
    const-string v3, "SP_APP_AD_APPID_DATA_KEY"

    .line 27
    invoke-static {v3}, Lcom/apk/eg;->goto(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 28
    invoke-static {p0}, Lcom/apk/finally;->h(Landroid/content/Context;)V

    const/4 v3, 0x1

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_9

    return-void

    .line 29
    :cond_9
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apk/continue;->else()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 30
    invoke-static {p0}, Lcom/bytedance/msdk/api/v2/GMMediationAdSdk;->requestPermissionIfNecessary(Landroid/content/Context;)V

    goto :goto_5

    .line 31
    :cond_a
    invoke-static {}, Lcom/apk/kg;->if()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SHOW_APPLY_PERMISSIONS_TODAY_KEY"

    const-string v5, ""

    .line 32
    invoke-static {v4, v5}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 33
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 34
    invoke-static {p0, v1, v0}, Lcom/apk/w0;->extends(Landroid/app/Activity;Lcom/apk/g1;Z)V

    .line 35
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v0, v4, v3}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_b
    :goto_5
    const-string v0, "SP_HOME_CONTINUE_READ_KG_KEY"

    .line 36
    invoke-static {v0, v2}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 37
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->mContinueReadLayout:Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;

    invoke-virtual {v0, p0}, Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;->do(Landroid/app/Activity;)V

    :cond_c
    return-void
.end method

.method public initView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->initView()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->mBottomNavigationView:Lcom/biquge/ebook/app/widget/MainBottomNavigationView;

    invoke-virtual {v0, p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 3
    invoke-virtual {p0, p0}, Lcom/apk/f6;->registerEventBus(Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x67

    if-eq p1, p3, :cond_1

    const/16 p3, 0x70

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 2
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->break:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    if-eqz p2, :cond_2

    const/4 p3, 0x0

    .line 3
    invoke-virtual {p2, p3, p1}, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->k(ZI)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->const:Lcom/biquge/ebook/app/ui/fragment/InfoFragment;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;->n()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->break:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    if-eqz v0, :cond_4

    .line 2
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->mTitleIndicatorView:Lcom/biquge/ebook/app/widget/TitleIndicatorView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Lcom/biquge/ebook/app/widget/TitleIndicatorView;->getTabModule()Lcom/apk/hf;

    move-result-object v1

    .line 4
    sget-object v3, Lcom/apk/hf;->do:Lcom/apk/hf;

    if-ne v1, v3, :cond_2

    .line 5
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->case:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->goto:Lcom/apk/t4;

    if-nez v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->this:Lcom/biquge/ebook/app/adapter/BookGroupAdapter;

    if-eqz v0, :cond_1

    .line 8
    iget-boolean v0, v0, Lcom/biquge/ebook/app/adapter/BookGroupAdapter;->for:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 9
    :cond_2
    sget-object v3, Lcom/apk/hf;->if:Lcom/apk/hf;

    if-ne v1, v3, :cond_1

    .line 10
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->else:Lcom/manhua/ui/fragment/ComicShelfFragment;

    if-eqz v0, :cond_1

    .line 11
    iget-object v1, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->while:Lcom/apk/p3;

    if-nez v1, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->try:Lcom/manhua/adapter/ComicGroupAdapter;

    if-eqz v0, :cond_1

    .line 13
    iget-boolean v0, v0, Lcom/manhua/adapter/ComicGroupAdapter;->for:Z

    :goto_1
    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->break:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->k(ZI)V

    return-void

    .line 15
    :cond_4
    invoke-super {p0}, Lcom/apk/h6;->onBackPressed()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/h6;->onDestroy()V

    .line 2
    invoke-virtual {p0, p0}, Lcom/apk/f6;->unRegisterEventBus(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/apk/p0;->break:Ljava/lang/String;

    .line 4
    sput-object v0, Lcom/apk/p0;->catch:Ljava/lang/String;

    .line 5
    sput-object v0, Lcom/apk/p0;->class:Ljava/lang/String;

    .line 6
    sput-object v0, Lcom/apk/p0;->const:Ljava/lang/String;

    .line 7
    sput-object v0, Lcom/apk/p0;->final:Ljava/lang/String;

    .line 8
    sput-object v0, Lcom/apk/p0;->super:Ljava/lang/String;

    .line 9
    sput-object v0, Lcom/apk/p0;->throw:Ljava/lang/String;

    return-void
.end method

.method public onEventMainThread(Lcom/apk/mf;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/apk/mf;->do:Ljava/lang/String;

    const-string v0, "REFRESH_BOOKSTORE_RED_TAG_KEY"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    const-string v0, "REFRESH_CHECK_TASK_RED_KEY"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "SET_SHELF_EDIT_FINISH"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->break:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    if-eqz p1, :cond_6

    .line 6
    invoke-virtual {p1, v1}, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->l(Z)V

    .line 7
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->new:Lcom/apk/b40;

    invoke-interface {v0, v3}, Lcom/apk/b40;->setItemClickable(Z)V

    .line 8
    invoke-virtual {p1, v1, v2}, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->k(ZI)V

    .line 9
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->case:Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookShelfFragment;->import:Lcom/apk/v5;

    invoke-virtual {v0, v1, v2}, Lcom/apk/v5;->new(ZI)V

    .line 11
    :cond_1
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->else:Lcom/manhua/ui/fragment/ComicShelfFragment;

    if-eqz p1, :cond_6

    .line 12
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicShelfFragment;->native:Lcom/apk/s5;

    invoke-virtual {p1, v1, v2}, Lcom/apk/s5;->for(ZI)V

    goto :goto_1

    :cond_2
    const-string v0, "REFRESH_CLEAR_SHELF_TASK_RED_KEY"

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "SP_TOP_MSG_RED_TAG_KEY"

    .line 14
    invoke-static {p1, v1}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->final:Lcom/apk/xp0;

    if-nez p1, :cond_6

    .line 16
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->mBottomNavigationView:Lcom/biquge/ebook/app/widget/MainBottomNavigationView;

    const v0, 0x7f090397

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz p1, :cond_6

    .line 17
    new-instance v0, Lcom/apk/xp0;

    invoke-direct {v0, p0}, Lcom/apk/xp0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->final:Lcom/apk/xp0;

    .line 18
    invoke-virtual {v0, p1}, Lcom/apk/xp0;->do(Landroid/view/View;)Lcom/apk/vp0;

    iget p1, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->case:F

    const/high16 v1, 0x41100000    # 9.0f

    invoke-virtual {v0, p1, v1, v3}, Lcom/apk/xp0;->this(FFZ)Lcom/apk/vp0;

    .line 19
    invoke-virtual {v0, v2}, Lcom/apk/xp0;->goto(I)Lcom/apk/vp0;

    goto :goto_1

    .line 20
    :cond_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->final:Lcom/apk/xp0;

    if-eqz p1, :cond_6

    .line 21
    invoke-virtual {p1, v1}, Lcom/apk/xp0;->goto(I)Lcom/apk/vp0;

    goto :goto_1

    :cond_4
    const-string v0, "SP_APP_AD_APPID_DATA_KEY"

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 23
    invoke-static {v0}, Lcom/apk/eg;->goto(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 24
    invoke-static {p0}, Lcom/apk/finally;->h(Landroid/content/Context;)V

    goto :goto_1

    .line 25
    :cond_5
    :goto_0
    new-instance p1, Lcom/apk/b1;

    invoke-direct {p1}, Lcom/apk/b1;-><init>()V

    new-instance v0, Lcom/apk/x7;

    invoke-direct {v0, p0, v1}, Lcom/apk/x7;-><init>(Lcom/biquge/ebook/app/ui/activity/MainActivity;Z)V

    invoke-virtual {p1, v0}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    :cond_6
    :goto_1
    return-void
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x7f090397

    if-ne v0, v3, :cond_0

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->mSViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-virtual {p1, v2}, Lcom/shizhefei/view/viewpager/SViewPager;->setCurrentItem(I)V

    .line 3
    invoke-virtual {p0, v2}, Lcom/biquge/ebook/app/ui/activity/MainActivity;->v(Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v3, 0x7f090399

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->mSViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-virtual {p1, v1}, Lcom/shizhefei/view/viewpager/SViewPager;->setCurrentItem(I)V

    .line 6
    invoke-virtual {p0, v2}, Lcom/biquge/ebook/app/ui/activity/MainActivity;->v(Z)V

    .line 7
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    throw v4

    .line 9
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v3, 0x7f090396

    if-ne v0, v3, :cond_3

    .line 10
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->mSViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/shizhefei/view/viewpager/SViewPager;->setCurrentItem(I)V

    .line 11
    invoke-virtual {p0, v2}, Lcom/biquge/ebook/app/ui/activity/MainActivity;->v(Z)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v3, 0x7f09039a

    if-ne v0, v3, :cond_4

    .line 13
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->mSViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/shizhefei/view/viewpager/SViewPager;->setCurrentItem(I)V

    .line 14
    invoke-virtual {p0, v2}, Lcom/biquge/ebook/app/ui/activity/MainActivity;->v(Z)V

    .line 15
    invoke-virtual {p0, v2}, Lcom/biquge/ebook/app/ui/activity/MainActivity;->r(Z)V

    goto :goto_0

    .line 16
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f090398

    if-ne p1, v0, :cond_6

    .line 17
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->mSViewPager:Lcom/shizhefei/view/viewpager/SViewPager;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/shizhefei/view/viewpager/SViewPager;->setCurrentItem(I)V

    .line 18
    invoke-virtual {p0, v1}, Lcom/biquge/ebook/app/ui/activity/MainActivity;->v(Z)V

    .line 19
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_0

    .line 20
    :cond_5
    throw v4

    :cond_6
    :goto_0
    return v1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "type"

    const/16 v1, 0x3e9

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3
    new-instance v1, Lcom/apk/p6;

    invoke-direct {v1, p0, v0, p1}, Lcom/apk/p6;-><init>(Lcom/biquge/ebook/app/ui/activity/MainActivity;ILandroid/content/Intent;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->return:Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->return:Z

    if-eqz p1, :cond_1

    .line 3
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->static:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 4
    sget-object p1, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 5
    iget-boolean p1, p1, Lcom/biquge/ebook/app/app/AppContext;->try:Z

    if-nez p1, :cond_0

    .line 6
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->static:Z

    .line 7
    new-instance p1, Lcom/apk/b1;

    invoke-direct {p1}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/a8;

    invoke-direct {v1, p0}, Lcom/apk/a8;-><init>(Lcom/biquge/ebook/app/ui/activity/MainActivity;)V

    invoke-virtual {p1, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    .line 8
    :cond_0
    iget-boolean p1, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->switch:Z

    if-nez p1, :cond_1

    .line 9
    iput-boolean v0, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->switch:Z

    .line 10
    new-instance p1, Lcom/apk/b1;

    invoke-direct {p1}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/x7;

    invoke-direct {v1, p0, v0}, Lcom/apk/x7;-><init>(Lcom/biquge/ebook/app/ui/activity/MainActivity;Z)V

    invoke-virtual {p1, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    .line 11
    new-instance p1, Lcom/apk/t6;

    invoke-direct {p1, p0}, Lcom/apk/t6;-><init>(Lcom/biquge/ebook/app/ui/activity/MainActivity;)V

    invoke-virtual {p0, p1}, Lcom/apk/i6;->post(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->return:Z

    return-void
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->goto:Lcom/biquge/ebook/app/bean/DiscoverBean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->this:Lcom/biquge/ebook/app/bean/NewShareDisBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/NewShareDisBean;->is_tab_show()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final r(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->throw:Lcom/apk/xp0;

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->mBottomNavigationView:Lcom/biquge/ebook/app/widget/MainBottomNavigationView;

    const v0, 0x7f09039a

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz p1, :cond_1

    .line 3
    new-instance v0, Lcom/apk/xp0;

    invoke-direct {v0, p0}, Lcom/apk/xp0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->throw:Lcom/apk/xp0;

    .line 4
    invoke-virtual {v0, p1}, Lcom/apk/xp0;->do(Landroid/view/View;)Lcom/apk/vp0;

    iget p1, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->case:F

    const/high16 v1, 0x41100000    # 9.0f

    const/4 v2, 0x1

    check-cast v0, Lcom/apk/xp0;

    invoke-virtual {v0, p1, v1, v2}, Lcom/apk/xp0;->this(FFZ)Lcom/apk/vp0;

    const/4 p1, -0x1

    .line 5
    check-cast v0, Lcom/apk/xp0;

    invoke-virtual {v0, p1}, Lcom/apk/xp0;->goto(I)Lcom/apk/vp0;

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->throw:Lcom/apk/xp0;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lcom/apk/xp0;->goto(I)Lcom/apk/vp0;

    .line 8
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v1, "SP_IS_VISIBLE_GAME_TAG_VIEW_KEY"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->mBottomNavigationView:Lcom/biquge/ebook/app/widget/MainBottomNavigationView;

    const v1, 0x7f090399

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    return-void
.end method

.method public synthetic t(ILandroid/content/Intent;)V
    .locals 2

    const-string v0, "source"

    const/16 v1, 0x3e9

    if-ne v1, p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->mBottomNavigationView:Lcom/biquge/ebook/app/widget/MainBottomNavigationView;

    const v1, 0x7f090397

    invoke-virtual {p1, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    .line 2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/apk/hf;

    .line 4
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->break:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2, p1}, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->i(Lcom/apk/hf;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x3ea

    if-ne v1, p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->mBottomNavigationView:Lcom/biquge/ebook/app/widget/MainBottomNavigationView;

    const v1, 0x7f090399

    invoke-virtual {p1, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setSelectedItemId(I)V

    .line 7
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/apk/hf;

    .line 9
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->catch:Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;

    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {p2, p1}, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;->synchronized(Lcom/apk/hf;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->import:Lcom/apk/x4;

    invoke-static {}, Lcom/apk/ze;->volatile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apk/x4;->catch(Ljava/lang/String;)V

    return-void
.end method

.method public final v(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->public:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->public:Z

    .line 3
    iget-object v0, p0, Lcom/apk/f6;->mImmersionBar:Lcom/apk/iu;

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/apk/f6;->initImmersionBar()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/apk/f6;->mImmersionBar:Lcom/apk/iu;

    const v1, 0x3e4ccccd    # 0.2f

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/apk/iu;->const(ZF)Lcom/apk/iu;

    .line 7
    invoke-virtual {v0}, Lcom/apk/iu;->else()V

    :cond_1
    return-void
.end method
