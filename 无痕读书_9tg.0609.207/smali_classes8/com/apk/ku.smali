.class public Lcom/apk/ku;
.super Ljava/lang/Object;
.source "ImmersionDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public do:Lcom/apk/iu;

.field public for:Lcom/apk/nu;

.field public if:Lcom/apk/du;

.field public new:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/ku;->do:Lcom/apk/iu;

    if-nez v0, :cond_4

    .line 4
    new-instance v0, Lcom/apk/iu;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Lcom/apk/iu;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/apk/ku;->do:Lcom/apk/iu;

    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/apk/ku;->do:Lcom/apk/iu;

    if-nez v0, :cond_4

    .line 7
    instance-of v0, p1, Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Lcom/apk/iu;

    check-cast p1, Landroidx/fragment/app/DialogFragment;

    invoke-direct {v0, p1}, Lcom/apk/iu;-><init>(Landroidx/fragment/app/DialogFragment;)V

    iput-object v0, p0, Lcom/apk/ku;->do:Lcom/apk/iu;

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Lcom/apk/iu;

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-direct {v0, p1}, Lcom/apk/iu;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/apk/ku;->do:Lcom/apk/iu;

    goto :goto_0

    .line 10
    :cond_2
    instance-of v0, p1, Landroid/app/Fragment;

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/apk/ku;->do:Lcom/apk/iu;

    if-nez v0, :cond_4

    .line 12
    instance-of v0, p1, Landroid/app/DialogFragment;

    if-eqz v0, :cond_3

    .line 13
    new-instance v0, Lcom/apk/iu;

    check-cast p1, Landroid/app/DialogFragment;

    invoke-direct {v0, p1}, Lcom/apk/iu;-><init>(Landroid/app/DialogFragment;)V

    iput-object v0, p0, Lcom/apk/ku;->do:Lcom/apk/iu;

    goto :goto_0

    .line 14
    :cond_3
    new-instance v0, Lcom/apk/iu;

    check-cast p1, Landroid/app/Fragment;

    invoke-direct {v0, p1}, Lcom/apk/iu;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/apk/ku;->do:Lcom/apk/iu;

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final do(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/ku;->do:Lcom/apk/iu;

    if-eqz v0, :cond_a

    .line 2
    iget-boolean v1, v0, Lcom/apk/iu;->native:Z

    if-eqz v1, :cond_a

    .line 3
    iget-object v1, v0, Lcom/apk/iu;->class:Lcom/apk/cu;

    .line 4
    iget-object v1, v1, Lcom/apk/cu;->implements:Lcom/apk/nu;

    iput-object v1, p0, Lcom/apk/ku;->for:Lcom/apk/nu;

    if-eqz v1, :cond_a

    .line 5
    invoke-virtual {v0}, Lcom/apk/iu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/apk/ku;->if:Lcom/apk/du;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lcom/apk/du;

    invoke-direct {v1}, Lcom/apk/du;-><init>()V

    iput-object v1, p0, Lcom/apk/ku;->if:Lcom/apk/du;

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/apk/ku;->if:Lcom/apk/du;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    const/4 p1, 0x0

    if-eqz v1, :cond_9

    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 10
    iget-object v1, p0, Lcom/apk/ku;->if:Lcom/apk/du;

    if-eqz v1, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    throw p1

    .line 12
    :cond_2
    throw p1

    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 13
    iget-object v1, p0, Lcom/apk/ku;->if:Lcom/apk/du;

    if-eqz v1, :cond_5

    if-eqz v1, :cond_4

    goto :goto_0

    .line 14
    :cond_4
    throw p1

    .line 15
    :cond_5
    throw p1

    .line 16
    :cond_6
    iget-object v1, p0, Lcom/apk/ku;->if:Lcom/apk/du;

    if-eqz v1, :cond_8

    if-eqz v1, :cond_7

    .line 17
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 18
    :cond_7
    throw p1

    .line 19
    :cond_8
    throw p1

    .line 20
    :cond_9
    throw p1

    :cond_a
    :goto_1
    return-void
.end method

.method public for()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/apk/ku;->if:Lcom/apk/du;

    .line 2
    iget-object v1, p0, Lcom/apk/ku;->do:Lcom/apk/iu;

    if-eqz v1, :cond_7

    .line 3
    iget-object v2, v1, Lcom/apk/iu;->do:Landroid/app/Activity;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 4
    iget-object v2, v1, Lcom/apk/iu;->while:Lcom/apk/gu;

    if-eqz v2, :cond_1

    .line 5
    iget-boolean v4, v2, Lcom/apk/gu;->catch:Z

    if-eqz v4, :cond_0

    .line 6
    iget-object v4, v2, Lcom/apk/gu;->for:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 7
    iput-boolean v3, v2, Lcom/apk/gu;->catch:Z

    .line 8
    :cond_0
    iput-object v0, v1, Lcom/apk/iu;->while:Lcom/apk/gu;

    .line 9
    :cond_1
    invoke-static {}, Lcom/apk/fu;->do()Lcom/apk/fu;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 10
    iget-object v2, v2, Lcom/apk/fu;->do:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12
    :goto_0
    invoke-static {}, Lcom/apk/lu;->do()Lcom/apk/lu;

    move-result-object v2

    iget-object v4, v1, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-object v4, v4, Lcom/apk/cu;->transient:Lcom/apk/pu;

    if-eqz v2, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    throw v0

    .line 14
    :cond_4
    throw v0

    .line 15
    :cond_5
    :goto_1
    iget-boolean v2, v1, Lcom/apk/iu;->catch:Z

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/apk/iu;->goto:Lcom/apk/iu;

    if-eqz v2, :cond_6

    .line 16
    iget-object v4, v2, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-boolean v5, v2, Lcom/apk/iu;->return:Z

    iput-boolean v5, v4, Lcom/apk/cu;->private:Z

    .line 17
    iget-object v4, v4, Lcom/apk/cu;->break:Lcom/apk/bu;

    sget-object v5, Lcom/apk/bu;->new:Lcom/apk/bu;

    if-eq v4, v5, :cond_6

    .line 18
    invoke-virtual {v2}, Lcom/apk/iu;->catch()V

    .line 19
    :cond_6
    iput-boolean v3, v1, Lcom/apk/iu;->native:Z

    .line 20
    iput-object v0, p0, Lcom/apk/ku;->do:Lcom/apk/iu;

    :cond_7
    return-void
.end method

.method public if(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/ku;->do:Lcom/apk/iu;

    if-eqz v0, :cond_3

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/apk/mu;->j()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/apk/iu;->new()V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v1, v0, Lcom/apk/iu;->native:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/apk/iu;->this:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-boolean v1, v1, Lcom/apk/cu;->strictfp:Z

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/apk/iu;->else()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/apk/iu;->new()V

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lcom/apk/ku;->do(Landroid/content/res/Configuration;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 8
    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public new()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/ku;->do:Lcom/apk/iu;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, v0, Lcom/apk/iu;->this:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/apk/iu;->native:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/apk/iu;->class:Lcom/apk/cu;

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lcom/apk/mu;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-boolean v1, v1, Lcom/apk/cu;->volatile:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/apk/iu;->else()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v0, Lcom/apk/iu;->class:Lcom/apk/cu;

    iget-object v1, v1, Lcom/apk/cu;->break:Lcom/apk/bu;

    sget-object v2, Lcom/apk/bu;->new:Lcom/apk/bu;

    if-eq v1, v2, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/apk/iu;->catch()V

    :cond_1
    :goto_0
    return-void
.end method

.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/apk/ku;->do:Lcom/apk/iu;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/apk/iu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2
    iget-object v0, p0, Lcom/apk/ku;->do:Lcom/apk/iu;

    invoke-virtual {v0}, Lcom/apk/iu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/apk/au;

    invoke-direct {v1, v0}, Lcom/apk/au;-><init>(Landroid/app/Activity;)V

    .line 4
    iget-object v1, p0, Lcom/apk/ku;->if:Lcom/apk/du;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    .line 5
    invoke-static {v0}, Lcom/apk/eg;->interface(Landroid/app/Activity;)Z

    move-result v1

    .line 6
    iget-object v3, p0, Lcom/apk/ku;->if:Lcom/apk/du;

    if-eqz v3, :cond_a

    if-eqz v1, :cond_9

    .line 7
    iget v1, p0, Lcom/apk/ku;->new:I

    if-nez v1, :cond_9

    .line 8
    invoke-static {v0}, Lcom/apk/iu;->try(Landroid/app/Activity;)I

    move-result v1

    .line 9
    invoke-static {v0}, Lcom/apk/eg;->throw(Landroid/app/Activity;)Landroid/view/DisplayCutout;

    move-result-object v3

    .line 10
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x1

    const/16 v6, 0x1c

    const/16 v7, 0x50

    if-lt v4, v6, :cond_2

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v5, :cond_0

    .line 12
    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    goto/16 :goto_2

    .line 13
    :cond_0
    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    if-nez v0, :cond_1

    .line 14
    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    goto/16 :goto_2

    .line 15
    :cond_1
    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    goto/16 :goto_2

    .line 16
    :cond_2
    invoke-static {v0}, Lcom/apk/eg;->volatile(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v6, "notch_height"

    const-string v8, "dimen"

    const-string v9, "android"

    invoke-virtual {v3, v6, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 19
    :goto_0
    invoke-static {v0}, Lcom/apk/eg;->continue(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 20
    fill-array-data v3, :array_0

    .line 21
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v8, "com.huawei.android.util.HwNotchSizeUtil"

    .line 22
    invoke-virtual {v6, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v8, "getNotchSize"

    new-array v9, v4, [Ljava/lang/Class;

    .line 23
    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    .line 24
    invoke-virtual {v8, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v6

    .line 25
    :catch_0
    aget v3, v3, v5

    .line 26
    :cond_4
    invoke-static {v0}, Lcom/apk/eg;->strictfp(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v3, 0x20

    int-to-float v3, v3

    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v5, v3, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    if-ge v3, v1, :cond_5

    move v3, v1

    .line 28
    :cond_5
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    :goto_1
    if-eqz v4, :cond_7

    if-ge v7, v1, :cond_6

    goto :goto_2

    :cond_6
    const/16 v1, 0x50

    goto :goto_2

    :cond_7
    move v1, v3

    .line 29
    :goto_2
    iput v1, p0, Lcom/apk/ku;->new:I

    .line 30
    iget-object v0, p0, Lcom/apk/ku;->if:Lcom/apk/du;

    if-eqz v0, :cond_8

    goto :goto_3

    .line 31
    :cond_8
    throw v2

    .line 32
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/apk/ku;->for:Lcom/apk/nu;

    iget-object v1, p0, Lcom/apk/ku;->if:Lcom/apk/du;

    invoke-interface {v0, v1}, Lcom/apk/nu;->do(Lcom/apk/du;)V

    goto :goto_4

    .line 33
    :cond_a
    throw v2

    .line 34
    :cond_b
    throw v2

    :cond_c
    :goto_4
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
