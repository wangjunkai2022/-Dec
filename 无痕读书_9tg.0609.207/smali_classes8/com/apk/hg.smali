.class public Lcom/apk/hg;
.super Ljava/lang/Object;
.source "SystemBrightManager.java"


# instance fields
.field public case:Z

.field public do:Landroid/app/Activity;

.field public else:Landroid/database/ContentObserver;

.field public final for:Landroid/net/Uri;

.field public if:Landroid/os/Handler;

.field public final new:Landroid/net/Uri;

.field public final try:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "screen_brightness_mode"

    .line 2
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/hg;->for:Landroid/net/Uri;

    const-string v0, "screen_brightness"

    .line 3
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/hg;->new:Landroid/net/Uri;

    const-string v0, "screen_auto_brightness_adj"

    .line 4
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/hg;->try:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/apk/hg;->case:Z

    .line 6
    new-instance v0, Lcom/apk/hg$if;

    iget-object v1, p0, Lcom/apk/hg;->if:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/apk/hg$if;-><init>(Lcom/apk/hg;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/apk/hg;->else:Landroid/database/ContentObserver;

    .line 7
    iput-object p1, p0, Lcom/apk/hg;->do:Landroid/app/Activity;

    .line 8
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/apk/hg;->if:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public case(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v1, "Brightness_Is_System_Code"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public do(Landroid/widget/SeekBar;Lcom/apk/n1;)V
    .locals 2

    const/16 v0, 0xff

    .line 1
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    const-string v0, "Brightness_Value_Code"

    const/16 v1, 0x64

    .line 2
    invoke-static {v0, v1}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v0

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 4
    new-instance v0, Lcom/apk/hg$do;

    invoke-direct {v0, p0, p2}, Lcom/apk/hg$do;-><init>(Lcom/apk/hg;Lcom/apk/n1;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public else(IZ)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/hg;->do:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    int-to-float v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    .line 2
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3
    iget-object v1, p0, Lcom/apk/hg;->do:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    if-eqz p2, :cond_0

    const-string p2, "Brightness_Value_Code"

    .line 4
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v0, p2, p1}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public for()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/hg;->do:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    .line 2
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3
    iget-object v1, p0, Lcom/apk/hg;->do:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public goto()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/hg;->else:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/apk/hg;->case:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/hg;->do:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/hg;->else:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/apk/hg;->case:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public if()Z
    .locals 2

    const-string v0, "Brightness_Is_System_Code"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public new()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/hg;->else:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/apk/hg;->case:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/hg;->do:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/apk/hg;->else:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 5
    iget-object v1, p0, Lcom/apk/hg;->for:Landroid/net/Uri;

    iget-object v2, p0, Lcom/apk/hg;->else:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 6
    iget-object v1, p0, Lcom/apk/hg;->new:Landroid/net/Uri;

    iget-object v2, p0, Lcom/apk/hg;->else:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 7
    iget-object v1, p0, Lcom/apk/hg;->try:Landroid/net/Uri;

    iget-object v2, p0, Lcom/apk/hg;->else:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/apk/hg;->case:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public try()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/apk/hg;->if()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/hg;->for()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    const-string v1, "Brightness_Value_Code"

    .line 3
    invoke-static {v1, v0}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/apk/hg;->else(IZ)V

    :goto_0
    return-void
.end method
