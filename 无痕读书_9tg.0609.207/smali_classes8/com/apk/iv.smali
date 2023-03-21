.class public Lcom/apk/iv;
.super Landroid/app/Dialog;
.source "FullScreenDialog.java"


# instance fields
.field public do:Lcom/lxj/xpopup/core/BasePopupView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/codelibrary/R$style;->_XPopup_TransparentDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/apk/iv;->do()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {}, Lcom/apk/pw;->class()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public do()Z
    .locals 8

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2
    :goto_1
    sget-object v3, Lcom/apk/mw;->if:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "unknown"

    .line 3
    sget-object v5, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    if-eqz v5, :cond_2

    goto/16 :goto_6

    .line 4
    :cond_2
    new-instance v5, Lcom/apk/mw$do;

    invoke-direct {v5}, Lcom/apk/mw$do;-><init>()V

    sput-object v5, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    .line 5
    :try_start_0
    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 7
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    :cond_3
    move-object v5, v4

    .line 8
    :goto_2
    :try_start_1
    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 9
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 10
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    nop

    .line 11
    :cond_4
    :goto_3
    sget-object v6, Lcom/apk/mw;->do:[Ljava/lang/String;

    invoke-static {v5, v4, v6}, Lcom/apk/mw;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 12
    sget-object v4, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    sget-object v5, Lcom/apk/mw;->do:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 13
    iput-object v5, v4, Lcom/apk/mw$do;->do:Ljava/lang/String;

    const-string v4, "ro.build.version.emui"

    .line 14
    invoke-static {v4}, Lcom/apk/mw;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_"

    .line 15
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 16
    array-length v6, v5

    if-le v6, v2, :cond_5

    .line 17
    sget-object v4, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    aget-object v5, v5, v2

    .line 18
    iput-object v5, v4, Lcom/apk/mw$do;->if:Ljava/lang/String;

    goto :goto_4

    .line 19
    :cond_5
    sget-object v5, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    .line 20
    iput-object v4, v5, Lcom/apk/mw$do;->if:Ljava/lang/String;

    .line 21
    :goto_4
    sget-object v5, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    goto/16 :goto_6

    .line 22
    :cond_6
    sget-object v6, Lcom/apk/mw;->if:[Ljava/lang/String;

    invoke-static {v5, v4, v6}, Lcom/apk/mw;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 23
    sget-object v4, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    sget-object v5, Lcom/apk/mw;->if:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 24
    iput-object v5, v4, Lcom/apk/mw$do;->do:Ljava/lang/String;

    const-string v5, "ro.vivo.os.build.display.id"

    .line 25
    invoke-static {v5}, Lcom/apk/mw;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 26
    iput-object v5, v4, Lcom/apk/mw$do;->if:Ljava/lang/String;

    .line 27
    sget-object v5, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    goto/16 :goto_6

    .line 28
    :cond_7
    sget-object v6, Lcom/apk/mw;->for:[Ljava/lang/String;

    invoke-static {v5, v4, v6}, Lcom/apk/mw;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 29
    sget-object v4, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    sget-object v5, Lcom/apk/mw;->for:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 30
    iput-object v5, v4, Lcom/apk/mw$do;->do:Ljava/lang/String;

    const-string v5, "ro.build.version.incremental"

    .line 31
    invoke-static {v5}, Lcom/apk/mw;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 32
    iput-object v5, v4, Lcom/apk/mw$do;->if:Ljava/lang/String;

    .line 33
    sget-object v5, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    goto/16 :goto_6

    .line 34
    :cond_8
    sget-object v6, Lcom/apk/mw;->new:[Ljava/lang/String;

    invoke-static {v5, v4, v6}, Lcom/apk/mw;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 35
    sget-object v4, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    sget-object v5, Lcom/apk/mw;->new:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 36
    iput-object v5, v4, Lcom/apk/mw$do;->do:Ljava/lang/String;

    const-string v5, "ro.build.version.opporom"

    .line 37
    invoke-static {v5}, Lcom/apk/mw;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 38
    iput-object v5, v4, Lcom/apk/mw$do;->if:Ljava/lang/String;

    .line 39
    sget-object v5, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    goto/16 :goto_6

    .line 40
    :cond_9
    sget-object v6, Lcom/apk/mw;->try:[Ljava/lang/String;

    invoke-static {v5, v4, v6}, Lcom/apk/mw;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 41
    sget-object v4, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    sget-object v5, Lcom/apk/mw;->try:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 42
    iput-object v5, v4, Lcom/apk/mw$do;->do:Ljava/lang/String;

    const-string v5, "ro.letv.release.version"

    .line 43
    invoke-static {v5}, Lcom/apk/mw;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    iput-object v5, v4, Lcom/apk/mw$do;->if:Ljava/lang/String;

    .line 45
    sget-object v5, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    goto/16 :goto_6

    .line 46
    :cond_a
    sget-object v6, Lcom/apk/mw;->case:[Ljava/lang/String;

    invoke-static {v5, v4, v6}, Lcom/apk/mw;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 47
    sget-object v4, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    sget-object v5, Lcom/apk/mw;->case:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 48
    iput-object v5, v4, Lcom/apk/mw$do;->do:Ljava/lang/String;

    const-string v5, "ro.build.uiversion"

    .line 49
    invoke-static {v5}, Lcom/apk/mw;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 50
    iput-object v5, v4, Lcom/apk/mw$do;->if:Ljava/lang/String;

    .line 51
    sget-object v5, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    goto/16 :goto_6

    .line 52
    :cond_b
    sget-object v6, Lcom/apk/mw;->else:[Ljava/lang/String;

    invoke-static {v5, v4, v6}, Lcom/apk/mw;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 53
    sget-object v4, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    sget-object v5, Lcom/apk/mw;->else:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 54
    iput-object v5, v4, Lcom/apk/mw$do;->do:Ljava/lang/String;

    const-string v5, "ro.build.MiFavor_version"

    .line 55
    invoke-static {v5}, Lcom/apk/mw;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 56
    iput-object v5, v4, Lcom/apk/mw$do;->if:Ljava/lang/String;

    .line 57
    sget-object v5, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    goto/16 :goto_6

    .line 58
    :cond_c
    sget-object v6, Lcom/apk/mw;->goto:[Ljava/lang/String;

    invoke-static {v5, v4, v6}, Lcom/apk/mw;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 59
    sget-object v4, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    sget-object v5, Lcom/apk/mw;->goto:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 60
    iput-object v5, v4, Lcom/apk/mw$do;->do:Ljava/lang/String;

    const-string v5, "ro.rom.version"

    .line 61
    invoke-static {v5}, Lcom/apk/mw;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 62
    iput-object v5, v4, Lcom/apk/mw$do;->if:Ljava/lang/String;

    .line 63
    sget-object v5, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    goto/16 :goto_6

    .line 64
    :cond_d
    sget-object v6, Lcom/apk/mw;->this:[Ljava/lang/String;

    invoke-static {v5, v4, v6}, Lcom/apk/mw;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 65
    sget-object v4, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    sget-object v5, Lcom/apk/mw;->this:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 66
    iput-object v5, v4, Lcom/apk/mw$do;->do:Ljava/lang/String;

    const-string v5, "ro.build.rom.id"

    .line 67
    invoke-static {v5}, Lcom/apk/mw;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 68
    iput-object v5, v4, Lcom/apk/mw$do;->if:Ljava/lang/String;

    .line 69
    sget-object v5, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    goto/16 :goto_6

    .line 70
    :cond_e
    sget-object v6, Lcom/apk/mw;->break:[Ljava/lang/String;

    invoke-static {v5, v4, v6}, Lcom/apk/mw;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 71
    sget-object v4, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    sget-object v5, Lcom/apk/mw;->break:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 72
    iput-object v5, v4, Lcom/apk/mw$do;->do:Ljava/lang/String;

    goto/16 :goto_5

    .line 73
    :cond_f
    sget-object v6, Lcom/apk/mw;->catch:[Ljava/lang/String;

    invoke-static {v5, v4, v6}, Lcom/apk/mw;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 74
    sget-object v4, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    sget-object v5, Lcom/apk/mw;->catch:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 75
    iput-object v5, v4, Lcom/apk/mw$do;->do:Ljava/lang/String;

    goto/16 :goto_5

    .line 76
    :cond_10
    sget-object v6, Lcom/apk/mw;->class:[Ljava/lang/String;

    invoke-static {v5, v4, v6}, Lcom/apk/mw;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 77
    sget-object v4, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    sget-object v5, Lcom/apk/mw;->class:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 78
    iput-object v5, v4, Lcom/apk/mw$do;->do:Ljava/lang/String;

    goto/16 :goto_5

    .line 79
    :cond_11
    sget-object v6, Lcom/apk/mw;->const:[Ljava/lang/String;

    invoke-static {v5, v4, v6}, Lcom/apk/mw;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 80
    sget-object v4, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    sget-object v5, Lcom/apk/mw;->const:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 81
    iput-object v5, v4, Lcom/apk/mw$do;->do:Ljava/lang/String;

    goto/16 :goto_5

    .line 82
    :cond_12
    sget-object v6, Lcom/apk/mw;->final:[Ljava/lang/String;

    invoke-static {v5, v4, v6}, Lcom/apk/mw;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 83
    sget-object v4, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    sget-object v5, Lcom/apk/mw;->final:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 84
    iput-object v5, v4, Lcom/apk/mw$do;->do:Ljava/lang/String;

    goto :goto_5

    .line 85
    :cond_13
    sget-object v6, Lcom/apk/mw;->super:[Ljava/lang/String;

    invoke-static {v5, v4, v6}, Lcom/apk/mw;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 86
    sget-object v4, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    sget-object v5, Lcom/apk/mw;->super:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 87
    iput-object v5, v4, Lcom/apk/mw$do;->do:Ljava/lang/String;

    goto :goto_5

    .line 88
    :cond_14
    sget-object v6, Lcom/apk/mw;->throw:[Ljava/lang/String;

    invoke-static {v5, v4, v6}, Lcom/apk/mw;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 89
    sget-object v4, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    sget-object v5, Lcom/apk/mw;->throw:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 90
    iput-object v5, v4, Lcom/apk/mw$do;->do:Ljava/lang/String;

    goto :goto_5

    .line 91
    :cond_15
    sget-object v6, Lcom/apk/mw;->while:[Ljava/lang/String;

    invoke-static {v5, v4, v6}, Lcom/apk/mw;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 92
    sget-object v4, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    sget-object v5, Lcom/apk/mw;->while:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 93
    iput-object v5, v4, Lcom/apk/mw$do;->do:Ljava/lang/String;

    goto :goto_5

    .line 94
    :cond_16
    sget-object v6, Lcom/apk/mw;->import:[Ljava/lang/String;

    invoke-static {v5, v4, v6}, Lcom/apk/mw;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 95
    sget-object v4, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    sget-object v5, Lcom/apk/mw;->import:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 96
    iput-object v5, v4, Lcom/apk/mw$do;->do:Ljava/lang/String;

    goto :goto_5

    .line 97
    :cond_17
    sget-object v6, Lcom/apk/mw;->native:[Ljava/lang/String;

    invoke-static {v5, v4, v6}, Lcom/apk/mw;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 98
    sget-object v4, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    sget-object v5, Lcom/apk/mw;->native:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 99
    iput-object v5, v4, Lcom/apk/mw$do;->do:Ljava/lang/String;

    goto :goto_5

    .line 100
    :cond_18
    sget-object v6, Lcom/apk/mw;->public:[Ljava/lang/String;

    invoke-static {v5, v4, v6}, Lcom/apk/mw;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 101
    sget-object v4, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    sget-object v5, Lcom/apk/mw;->public:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 102
    iput-object v5, v4, Lcom/apk/mw$do;->do:Ljava/lang/String;

    goto :goto_5

    .line 103
    :cond_19
    sget-object v5, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    .line 104
    iput-object v4, v5, Lcom/apk/mw$do;->do:Ljava/lang/String;

    .line 105
    :goto_5
    sget-object v4, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    const-string v5, ""

    invoke-static {v5}, Lcom/apk/mw;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 106
    iput-object v5, v4, Lcom/apk/mw$do;->if:Ljava/lang/String;

    .line 107
    sget-object v5, Lcom/apk/mw;->return:Lcom/apk/mw$do;

    .line 108
    :goto_6
    iget-object v4, v5, Lcom/apk/mw$do;->do:Ljava/lang/String;

    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 110
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_1a

    const/16 v4, 0x1b

    if-ne v3, v4, :cond_1b

    :cond_1a
    if-nez v0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method public for(IZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 2
    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr p1, p2

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 3
    :cond_0
    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public if(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/iv;->do:Lcom/lxj/xpopup/core/BasePopupView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/iv;->do:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/apk/iv;->do:Lcom/lxj/xpopup/core/BasePopupView;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-boolean p1, p1, Lcom/apk/lv;->strictfp:Z

    if-eqz p1, :cond_2

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7f6

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x1000000

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 11
    invoke-virtual {p0}, Lcom/apk/iv;->do()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/apk/pw;->class()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 14
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 15
    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 16
    iget v2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 17
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/apk/pw;->const(Landroid/content/Context;)I

    move-result v3

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    goto :goto_1

    .line 19
    :cond_3
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 20
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 21
    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 22
    iget v2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 23
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/apk/pw;->const(Landroid/content/Context;)I

    move-result v3

    .line 24
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    :goto_1
    const/16 p1, 0x500

    .line 25
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 26
    iget-object p1, p0, Lcom/apk/iv;->do:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-boolean p1, p1, Lcom/apk/lv;->package:Z

    const/16 v2, 0x8

    if-nez p1, :cond_4

    .line 27
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_4
    const/high16 p1, 0xc000000

    .line 28
    invoke-virtual {p0, p1, v1}, Lcom/apk/iv;->for(IZ)V

    .line 29
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 30
    iget-object p1, p0, Lcom/apk/iv;->do:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget p1, p1, Lcom/apk/lv;->switch:I

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v3, p0, Lcom/apk/iv;->do:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object v3, v3, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget v3, v3, Lcom/apk/lv;->switch:I

    invoke-virtual {p1, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 31
    :cond_5
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v3, -0x80000000

    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 32
    iget-object p1, p0, Lcom/apk/iv;->do:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object p1, p1, Lcom/apk/lv;->static:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_8

    .line 33
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 34
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_7

    .line 35
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 36
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v6, v0, :cond_6

    .line 37
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string v6, ""

    :goto_3
    const-string v7, "navigationBarBackground"

    .line 38
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x4

    .line 39
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 40
    :cond_7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0xf06

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 42
    :cond_8
    iget-object p1, p0, Lcom/apk/iv;->do:Lcom/lxj/xpopup/core/BasePopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    iget-object p1, p1, Lcom/apk/lv;->return:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_9

    .line 43
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    goto :goto_5

    .line 44
    :cond_9
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_c

    .line 45
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .line 47
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v0, :cond_a

    .line 48
    iget-object v0, p0, Lcom/apk/iv;->do:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    if-eqz v1, :cond_b

    or-int/lit16 v0, v2, 0x2000

    goto :goto_4

    :cond_b
    and-int/lit16 v0, v2, -0x2001

    .line 50
    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 51
    :cond_c
    :goto_5
    iget-object p1, p0, Lcom/apk/iv;->do:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method
