.class public Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$try;
.super Lcom/apk/bg;
.source "NewBookReadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$try;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const-string v1, ""

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$try;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 4
    invoke-virtual {p1}, Lcom/apk/h2;->static()Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$try;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 6
    iget-object v2, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$try;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 8
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->L()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$try;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 10
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$try;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 12
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 13
    invoke-virtual {v0}, Lcom/apk/h2;->public()Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apk/h2;->throw(Lcom/biquge/ebook/app/bean/BookChapter;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$try;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 14
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 15
    iget v7, p1, Lcom/apk/h2;->goto:I

    .line 16
    invoke-virtual/range {v2 .. v7}, Lcom/apk/h2;->case(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$try;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$try;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 18
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->L()Ljava/lang/String;

    move-result-object v0

    .line 19
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$try;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 20
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 21
    iget-object v2, v2, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$try;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 23
    iget-object v4, v4, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 24
    iget v4, v4, Lcom/apk/h2;->goto:I

    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v0, v2, v1}, Lcom/apk/n2;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->setBookMarkStatus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 28
    :sswitch_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$try;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->s(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    .line 29
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$try;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 30
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 31
    iget-object v0, p1, Lcom/apk/h2;->switch:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 32
    new-instance v1, Lcom/apk/v1;

    invoke-direct {v1, p1}, Lcom/apk/v1;-><init>(Lcom/apk/h2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$try;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 34
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    if-eqz v0, :cond_1

    .line 35
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 36
    invoke-virtual {p1}, Lcom/apk/h2;->default()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 37
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$try;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 38
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->transient:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    .line 39
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->if()V

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$try;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->finally()V

    goto/16 :goto_2

    .line 41
    :sswitch_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$try;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    const-string v0, "4"

    invoke-static {p1, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->q(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 42
    :sswitch_3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$try;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    const-string v0, "0"

    invoke-static {p1, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->q(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 43
    :sswitch_4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$try;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-static {p1, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->r(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;Z)V

    goto/16 :goto_2

    .line 44
    :sswitch_5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$try;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    const-string v0, "3"

    invoke-static {p1, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->q(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 45
    :sswitch_6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$try;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    const-string v0, "1"

    invoke-static {p1, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->q(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 46
    :sswitch_7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$try;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->K()V

    const p1, 0x7f1000b2

    .line 47
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto/16 :goto_2

    :sswitch_8
    const-string p1, "SP_LOGIN_CHECK_LISTEN_KEY"

    const/4 v2, 0x0

    .line 48
    invoke-static {p1, v2}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 49
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/v0;->const()Z

    move-result p1

    if-nez p1, :cond_2

    .line 50
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$try;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 51
    invoke-static {p1}, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->l(Landroid/content/Context;)V

    return-void

    .line 52
    :cond_2
    invoke-static {}, Lcom/apk/s0;->if()Lcom/apk/s0;

    move-result-object p1

    .line 53
    iget-boolean v3, p1, Lcom/apk/s0;->for:Z

    if-nez v3, :cond_3

    goto/16 :goto_1

    .line 54
    :cond_3
    iget v3, p1, Lcom/apk/s0;->break:I

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_4

    .line 55
    invoke-static {}, Lcom/apk/w0;->this()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/apk/kg;->do(JJ)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 56
    iget v6, p1, Lcom/apk/s0;->break:I

    if-ge v3, v6, :cond_4

    goto/16 :goto_1

    .line 57
    :cond_4
    iget-boolean v3, p1, Lcom/apk/s0;->class:Z

    if-eqz v3, :cond_6

    const-string v1, "SP_TTS_TIME_SAVE_KEY"

    .line 58
    invoke-static {v1, v4, v5}, Lcom/apk/ze;->a(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-nez v3, :cond_5

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 60
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v3, v1, v6, v7}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 61
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 62
    iget v1, p1, Lcom/apk/s0;->goto:I

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-lez v1, :cond_9

    goto :goto_0

    .line 63
    :cond_6
    iget-boolean v3, p1, Lcom/apk/s0;->const:Z

    if-eqz v3, :cond_7

    .line 64
    invoke-static {}, Lcom/apk/kg;->if()Ljava/lang/String;

    move-result-object p1

    const-string v2, "SP_TSLIMIT_TODAT_REWARD_KEY"

    .line 65
    invoke-static {v2, v1}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 v2, p1, 0x1

    goto :goto_1

    .line 67
    :cond_7
    iget v1, p1, Lcom/apk/s0;->goto:I

    .line 68
    iget v3, p1, Lcom/apk/s0;->this:I

    if-lez v3, :cond_8

    sub-int/2addr v1, v3

    :cond_8
    const-string v3, "SP_TTS_USE_TIME_KEY"

    .line 69
    invoke-static {v3, v1}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v1

    .line 70
    iget v3, p1, Lcom/apk/s0;->goto:I

    if-lt v1, v3, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_a

    .line 71
    iget-object v1, p1, Lcom/apk/s0;->final:Ljava/util/Timer;

    if-nez v1, :cond_a

    .line 72
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p1, Lcom/apk/s0;->final:Ljava/util/Timer;

    .line 73
    new-instance v3, Lcom/apk/t0;

    invoke-direct {v3, p1}, Lcom/apk/t0;-><init>(Lcom/apk/s0;)V

    const-wide/32 v4, 0xea60

    const-wide/32 v6, 0xea60

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_a
    move v2, v0

    :goto_1
    if-eqz v2, :cond_b

    .line 74
    invoke-static {}, Lcom/apk/s0;->if()Lcom/apk/s0;

    move-result-object p1

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$try;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-virtual {p1, v0}, Lcom/apk/s0;->this(Landroid/content/Context;)V

    return-void

    .line 75
    :cond_b
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$try;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    new-instance v0, Lcom/apk/g0;

    .line 76
    iget-object v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->l:Lcom/apk/e1;

    .line 77
    invoke-direct {v0, p1, v1}, Lcom/apk/g0;-><init>(Landroid/content/Context;Lcom/apk/e1;)V

    .line 78
    iput-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->import:Lcom/apk/g0;

    goto :goto_2

    .line 79
    :sswitch_9
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$try;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->t(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    const p1, 0x7f100047

    .line 80
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    :cond_c
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900e6 -> :sswitch_9
        0x7f090100 -> :sswitch_8
        0x7f090102 -> :sswitch_7
        0x7f090103 -> :sswitch_6
        0x7f090104 -> :sswitch_5
        0x7f090105 -> :sswitch_4
        0x7f090107 -> :sswitch_3
        0x7f090108 -> :sswitch_2
        0x7f090456 -> :sswitch_1
        0x7f090457 -> :sswitch_1
        0x7f090461 -> :sswitch_1
        0x7f09060d -> :sswitch_0
    .end sparse-switch
.end method
