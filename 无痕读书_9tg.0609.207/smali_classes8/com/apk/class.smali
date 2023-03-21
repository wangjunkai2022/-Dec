.class public Lcom/apk/class;
.super Lcom/apk/break;
.source "AdBestTopHelper.java"


# instance fields
.field public break:Landroid/widget/LinearLayout;

.field public case:I

.field public catch:Z

.field public class:Lcom/swl/gg/ggs/SwlAdBesttopView;

.field public const:Lcom/swl/gg/ggs/SwlAdBesttopTwoView;

.field public else:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/g;",
            ">;"
        }
    .end annotation
.end field

.field public final final:Lcom/apk/n40;

.field public for:J

.field public goto:Landroid/app/Activity;

.field public if:Lcom/apk/break$do;

.field public new:J

.field public this:Z

.field public try:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/break;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/class$do;

    invoke-direct {v0, p0}, Lcom/apk/class$do;-><init>(Lcom/apk/class;)V

    iput-object v0, p0, Lcom/apk/class;->final:Lcom/apk/n40;

    return-void
.end method


# virtual methods
.method public do()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/apk/class;->for:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/apk/class;->if:Lcom/apk/break$do;

    if-eqz v0, :cond_0

    const/16 v1, 0x66

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lcom/apk/class;->if:Lcom/apk/break$do;

    iget-wide v2, p0, Lcom/apk/class;->for:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/apk/class;->try:Z

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/apk/break;->do:Z

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/class;->else:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/apk/finally;->this(Ljava/util/List;)I

    move-result v0

    goto :goto_0

    .line 7
    :cond_2
    iget v0, p0, Lcom/apk/class;->case:I

    iget-object v1, p0, Lcom/apk/class;->else:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 8
    iget v1, p0, Lcom/apk/class;->case:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/apk/class;->case:I

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/apk/class;->else:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/g;

    .line 10
    invoke-virtual {v0}, Lcom/apk/g;->if()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v0}, Lcom/apk/g;->do()Ljava/lang/String;

    move-result-object v0

    const-string v2, "swl"

    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {p0, v0}, Lcom/apk/class;->new(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public for(Landroid/app/Activity;Landroid/widget/LinearLayout;Lorg/json/JSONObject;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/class;->goto:Landroid/app/Activity;

    .line 2
    iput-object p2, p0, Lcom/apk/class;->break:Landroid/widget/LinearLayout;

    .line 3
    iput-boolean p4, p0, Lcom/apk/class;->catch:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/apk/class;->try:Z

    .line 5
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object p1

    new-instance p2, Lcom/apk/catch;

    invoke-direct {p2, p0, p3}, Lcom/apk/catch;-><init>(Lcom/apk/class;Lorg/json/JSONObject;)V

    invoke-virtual {p1, p2}, Lcom/apk/o;->do(Ljava/lang/Runnable;)V

    return-void
.end method

.method public if()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/apk/class;->try:Z

    .line 2
    invoke-virtual {p0}, Lcom/apk/class;->do()V

    return-void
.end method

.method public final new(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/apk/class;->catch:Z

    if-nez v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/apk/class;->class:Lcom/swl/gg/ggs/SwlAdBesttopView;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/swl/gg/ggs/SwlAdBesttopView;

    iget-object v1, p0, Lcom/apk/class;->goto:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/swl/gg/ggs/SwlAdBesttopView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apk/class;->class:Lcom/swl/gg/ggs/SwlAdBesttopView;

    .line 4
    iget-object v1, p0, Lcom/apk/class;->final:Lcom/apk/n40;

    invoke-virtual {v0, v1}, Lcom/swl/gg/ggs/SwlAdBesttopView;->setAdViewListener(Lcom/apk/n40;)V

    .line 5
    iget-object v0, p0, Lcom/apk/class;->class:Lcom/swl/gg/ggs/SwlAdBesttopView;

    iget-boolean v1, p0, Lcom/apk/class;->this:Z

    invoke-virtual {v0, v1}, Lcom/swl/gg/ggs/SwlAdBesttopView;->setClose(Z)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/apk/class;->class:Lcom/swl/gg/ggs/SwlAdBesttopView;

    invoke-virtual {v0, p1}, Lcom/swl/gg/ggs/SwlAdBesttopView;->loadAd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/apk/class;->const:Lcom/swl/gg/ggs/SwlAdBesttopTwoView;

    if-nez v0, :cond_2

    .line 9
    new-instance v0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView;

    iget-object v1, p0, Lcom/apk/class;->goto:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/swl/gg/ggs/SwlAdBesttopTwoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apk/class;->const:Lcom/swl/gg/ggs/SwlAdBesttopTwoView;

    .line 10
    iget-object v1, p0, Lcom/apk/class;->final:Lcom/apk/n40;

    invoke-virtual {v0, v1}, Lcom/swl/gg/ggs/SwlAdBesttopTwoView;->setAdViewListener(Lcom/apk/n40;)V

    .line 11
    iget-object v0, p0, Lcom/apk/class;->const:Lcom/swl/gg/ggs/SwlAdBesttopTwoView;

    iget-boolean v1, p0, Lcom/apk/class;->this:Z

    invoke-virtual {v0, v1}, Lcom/swl/gg/ggs/SwlAdBesttopTwoView;->setClose(Z)V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/apk/class;->const:Lcom/swl/gg/ggs/SwlAdBesttopTwoView;

    invoke-virtual {v0, p1}, Lcom/swl/gg/ggs/SwlAdBesttopTwoView;->loadAd(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public try()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/apk/class;->try:Z

    .line 2
    iget-object v0, p0, Lcom/apk/class;->class:Lcom/swl/gg/ggs/SwlAdBesttopView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/swl/gg/ggs/SwlAdBesttopView;->destroy()V

    .line 4
    iput-object v1, p0, Lcom/apk/class;->class:Lcom/swl/gg/ggs/SwlAdBesttopView;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/apk/class;->if:Lcom/apk/break$do;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    iput-object v1, p0, Lcom/apk/class;->if:Lcom/apk/break$do;

    :cond_1
    return-void
.end method
