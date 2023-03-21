.class public Lcom/apk/final;
.super Ljava/lang/Object;
.source "AdBlockNativeHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public abstract:Landroid/widget/TextView;

.field public break:Landroid/view/ViewStub;

.field public case:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/swl/gg/bean/SwlAdView;",
            ">;"
        }
    .end annotation
.end field

.field public catch:Landroid/view/ViewStub;

.field public class:Z

.field public final const:Ljava/lang/Runnable;

.field public continue:Landroid/widget/TextView;

.field public default:Landroid/widget/TextView;

.field public do:Landroid/os/Handler;

.field public else:Landroid/app/Activity;

.field public extends:Landroid/view/View;

.field public final:Landroid/view/View;

.field public finally:Landroid/widget/ImageView;

.field public for:I

.field public goto:Landroid/view/View;

.field public if:Z

.field public import:Landroid/widget/TextView;

.field public native:Landroid/widget/TextView;

.field public new:J

.field public package:Landroid/widget/TextView;

.field public private:Landroid/widget/TextView;

.field public public:Landroid/view/View;

.field public return:Landroid/widget/ImageView;

.field public static:Landroid/widget/TextView;

.field public super:Landroid/widget/ImageView;

.field public switch:Landroid/widget/TextView;

.field public this:Landroid/view/ViewStub;

.field public throw:Landroid/widget/TextView;

.field public throws:Landroid/widget/TextView;

.field public try:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/g;",
            ">;"
        }
    .end annotation
.end field

.field public while:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/apk/final;->do:Landroid/os/Handler;

    .line 3
    new-instance v0, Lcom/apk/final$do;

    invoke-direct {v0, p0}, Lcom/apk/final$do;-><init>(Lcom/apk/final;)V

    iput-object v0, p0, Lcom/apk/final;->const:Ljava/lang/Runnable;

    return-void
.end method

.method public static do(Lcom/apk/final;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_2

    .line 1
    invoke-static {p1}, Lcom/swl/gg/ggs/SwlAdHelper;->getSwlAdViews(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/final;->case:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/apk/final;->case:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    .line 4
    iput v0, p0, Lcom/apk/final;->for:I

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/apk/final;->case:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/apk/final;->for:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 p0, 0x0

    .line 6
    throw p0
.end method


# virtual methods
.method public final for(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/final;->else:Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/apk/final;->goto:Landroid/view/View;

    const v0, 0x7f0902b5

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/apk/final;->this:Landroid/view/ViewStub;

    const v0, 0x7f0902b7

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/apk/final;->break:Landroid/view/ViewStub;

    const v0, 0x7f0902b6

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/apk/final;->catch:Landroid/view/ViewStub;

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "null"

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p2, 0x7f0902a1

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f0902a0

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0903d6

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0903d7

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/apk/final;->class:Z

    .line 14
    iput-boolean p1, p0, Lcom/apk/final;->class:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public if(Landroid/app/Activity;Landroid/view/ViewStub;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 1
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/finally;->while()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Lcom/apk/final;->else:Landroid/app/Activity;

    .line 3
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object p1

    .line 4
    iget-object p1, p1, Lcom/apk/finally;->strictfp:Lorg/json/JSONObject;

    const-string v0, "navtitle"

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p0, p2, v0}, Lcom/apk/final;->for(Landroid/view/View;Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object p2

    new-instance v0, Lcom/apk/const;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/apk/const;-><init>(Lcom/apk/final;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/apk/o;->do(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public new()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/apk/final;->if:Z

    .line 2
    iget-object v0, p0, Lcom/apk/final;->goto:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-object v1, p0, Lcom/apk/final;->goto:Landroid/view/View;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apk/final;->do:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    iput-object v1, p0, Lcom/apk/final;->do:Landroid/os/Handler;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/apk/final;->this:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    .line 8
    iput-object v1, p0, Lcom/apk/final;->this:Landroid/view/ViewStub;

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/apk/final;->break:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    .line 10
    iput-object v1, p0, Lcom/apk/final;->break:Landroid/view/ViewStub;

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/apk/final;->catch:Landroid/view/ViewStub;

    if-eqz v0, :cond_4

    .line 12
    iput-object v1, p0, Lcom/apk/final;->catch:Landroid/view/ViewStub;

    :cond_4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/apk/final;->case:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/apk/final;->case:Ljava/util/List;

    iget v0, p0, Lcom/apk/final;->for:I

    invoke-static {p1, v0}, Lcom/apk/ze;->final(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apk/final;->try(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final try(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/swl/gg/bean/SwlAdView;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_15

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_15

    const v3, 0x7f100430

    const-string v4, "#999999"

    const v5, 0x7f090342

    const v6, 0x7f090344

    const v7, 0x7f090349

    const v8, 0x7f09033a

    const v9, 0x7f09032a

    const/4 v10, 0x1

    if-nez v2, :cond_6

    .line 3
    iget-object v11, p0, Lcom/apk/final;->this:Landroid/view/ViewStub;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/swl/gg/bean/SwlAdView;

    if-eqz v12, :cond_14

    .line 4
    iget-object v13, p0, Lcom/apk/final;->final:Landroid/view/View;

    if-nez v13, :cond_0

    if-eqz v11, :cond_0

    .line 5
    invoke-virtual {v11}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/apk/final;->final:Landroid/view/View;

    .line 6
    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v11, p0, Lcom/apk/final;->final:Landroid/view/View;

    invoke-virtual {v11, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/apk/final;->super:Landroid/widget/ImageView;

    .line 8
    iget-object v9, p0, Lcom/apk/final;->final:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/apk/final;->throw:Landroid/widget/TextView;

    .line 9
    iget-object v8, p0, Lcom/apk/final;->final:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/apk/final;->while:Landroid/widget/TextView;

    .line 10
    iget-object v7, p0, Lcom/apk/final;->final:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/apk/final;->import:Landroid/widget/TextView;

    .line 11
    iget-object v6, p0, Lcom/apk/final;->final:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/apk/final;->native:Landroid/widget/TextView;

    .line 12
    iget-boolean v5, p0, Lcom/apk/final;->class:Z

    if-eqz v5, :cond_0

    .line 13
    iget-object v5, p0, Lcom/apk/final;->throw:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    :cond_0
    iget-object v4, p0, Lcom/apk/final;->super:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 15
    invoke-virtual {v12}, Lcom/swl/gg/bean/SwlAdView;->getImgurl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/apk/final;->super:Landroid/widget/ImageView;

    invoke-static {v4, v5}, Lcom/apk/u;->final(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 16
    :cond_1
    iget-object v4, p0, Lcom/apk/final;->throw:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 17
    invoke-virtual {v12}, Lcom/swl/gg/bean/SwlAdView;->getAdtitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :cond_2
    iget-object v4, p0, Lcom/apk/final;->while:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 19
    invoke-virtual {v12}, Lcom/swl/gg/bean/SwlAdView;->getSubtitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    :cond_3
    iget-object v4, p0, Lcom/apk/final;->import:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 21
    invoke-virtual {v12}, Lcom/swl/gg/bean/SwlAdView;->getAddesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    :cond_4
    iget-object v4, p0, Lcom/apk/final;->native:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    new-array v5, v10, [Ljava/lang/Object;

    .line 23
    invoke-virtual {v12}, Lcom/swl/gg/bean/SwlAdView;->getScore()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v5}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    :cond_5
    iget-object v3, p0, Lcom/apk/final;->final:Landroid/view/View;

    if-eqz v3, :cond_14

    .line 25
    new-instance v4, Lcom/apk/super;

    invoke-direct {v4, p0, v12}, Lcom/apk/super;-><init>(Lcom/apk/final;Lcom/swl/gg/bean/SwlAdView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_6
    if-ne v2, v10, :cond_d

    .line 26
    iget-object v11, p0, Lcom/apk/final;->break:Landroid/view/ViewStub;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/swl/gg/bean/SwlAdView;

    if-eqz v12, :cond_14

    .line 27
    iget-object v13, p0, Lcom/apk/final;->public:Landroid/view/View;

    if-nez v13, :cond_7

    if-eqz v11, :cond_7

    .line 28
    invoke-virtual {v11}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/apk/final;->public:Landroid/view/View;

    .line 29
    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    iget-object v11, p0, Lcom/apk/final;->public:Landroid/view/View;

    invoke-virtual {v11, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/apk/final;->return:Landroid/widget/ImageView;

    .line 31
    iget-object v9, p0, Lcom/apk/final;->public:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/apk/final;->static:Landroid/widget/TextView;

    .line 32
    iget-object v8, p0, Lcom/apk/final;->public:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/apk/final;->switch:Landroid/widget/TextView;

    .line 33
    iget-object v7, p0, Lcom/apk/final;->public:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/apk/final;->throws:Landroid/widget/TextView;

    .line 34
    iget-object v6, p0, Lcom/apk/final;->public:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/apk/final;->default:Landroid/widget/TextView;

    .line 35
    iget-boolean v5, p0, Lcom/apk/final;->class:Z

    if-eqz v5, :cond_7

    .line 36
    iget-object v5, p0, Lcom/apk/final;->static:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    :cond_7
    iget-object v4, p0, Lcom/apk/final;->return:Landroid/widget/ImageView;

    if-eqz v4, :cond_8

    .line 38
    invoke-virtual {v12}, Lcom/swl/gg/bean/SwlAdView;->getImgurl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/apk/final;->return:Landroid/widget/ImageView;

    invoke-static {v4, v5}, Lcom/apk/u;->final(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 39
    :cond_8
    iget-object v4, p0, Lcom/apk/final;->static:Landroid/widget/TextView;

    if-eqz v4, :cond_9

    .line 40
    invoke-virtual {v12}, Lcom/swl/gg/bean/SwlAdView;->getAdtitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :cond_9
    iget-object v4, p0, Lcom/apk/final;->switch:Landroid/widget/TextView;

    if-eqz v4, :cond_a

    .line 42
    invoke-virtual {v12}, Lcom/swl/gg/bean/SwlAdView;->getSubtitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :cond_a
    iget-object v4, p0, Lcom/apk/final;->throws:Landroid/widget/TextView;

    if-eqz v4, :cond_b

    .line 44
    invoke-virtual {v12}, Lcom/swl/gg/bean/SwlAdView;->getAddesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :cond_b
    iget-object v4, p0, Lcom/apk/final;->default:Landroid/widget/TextView;

    if-eqz v4, :cond_c

    new-array v5, v10, [Ljava/lang/Object;

    .line 46
    invoke-virtual {v12}, Lcom/swl/gg/bean/SwlAdView;->getScore()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v5}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :cond_c
    iget-object v3, p0, Lcom/apk/final;->public:Landroid/view/View;

    if-eqz v3, :cond_14

    .line 48
    new-instance v4, Lcom/apk/throw;

    invoke-direct {v4, p0, v12}, Lcom/apk/throw;-><init>(Lcom/apk/final;Lcom/swl/gg/bean/SwlAdView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_d
    const/4 v11, 0x2

    if-ne v2, v11, :cond_14

    .line 49
    iget-object v11, p0, Lcom/apk/final;->catch:Landroid/view/ViewStub;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/swl/gg/bean/SwlAdView;

    if-eqz v12, :cond_14

    .line 50
    iget-object v13, p0, Lcom/apk/final;->extends:Landroid/view/View;

    if-nez v13, :cond_e

    if-eqz v11, :cond_e

    .line 51
    invoke-virtual {v11}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/apk/final;->extends:Landroid/view/View;

    .line 52
    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    iget-object v11, p0, Lcom/apk/final;->extends:Landroid/view/View;

    invoke-virtual {v11, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/apk/final;->finally:Landroid/widget/ImageView;

    .line 54
    iget-object v9, p0, Lcom/apk/final;->extends:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/apk/final;->package:Landroid/widget/TextView;

    .line 55
    iget-object v8, p0, Lcom/apk/final;->extends:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/apk/final;->private:Landroid/widget/TextView;

    .line 56
    iget-object v7, p0, Lcom/apk/final;->extends:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/apk/final;->abstract:Landroid/widget/TextView;

    .line 57
    iget-object v6, p0, Lcom/apk/final;->extends:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/apk/final;->continue:Landroid/widget/TextView;

    .line 58
    iget-boolean v5, p0, Lcom/apk/final;->class:Z

    if-eqz v5, :cond_e

    .line 59
    iget-object v5, p0, Lcom/apk/final;->package:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    :cond_e
    iget-object v4, p0, Lcom/apk/final;->finally:Landroid/widget/ImageView;

    if-eqz v4, :cond_f

    .line 61
    invoke-virtual {v12}, Lcom/swl/gg/bean/SwlAdView;->getImgurl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/apk/final;->finally:Landroid/widget/ImageView;

    invoke-static {v4, v5}, Lcom/apk/u;->final(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 62
    :cond_f
    iget-object v4, p0, Lcom/apk/final;->package:Landroid/widget/TextView;

    if-eqz v4, :cond_10

    .line 63
    invoke-virtual {v12}, Lcom/swl/gg/bean/SwlAdView;->getAdtitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_10
    iget-object v4, p0, Lcom/apk/final;->private:Landroid/widget/TextView;

    if-eqz v4, :cond_11

    .line 65
    invoke-virtual {v12}, Lcom/swl/gg/bean/SwlAdView;->getSubtitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_11
    iget-object v4, p0, Lcom/apk/final;->abstract:Landroid/widget/TextView;

    if-eqz v4, :cond_12

    .line 67
    invoke-virtual {v12}, Lcom/swl/gg/bean/SwlAdView;->getAddesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_12
    iget-object v4, p0, Lcom/apk/final;->continue:Landroid/widget/TextView;

    if-eqz v4, :cond_13

    new-array v5, v10, [Ljava/lang/Object;

    .line 69
    invoke-virtual {v12}, Lcom/swl/gg/bean/SwlAdView;->getScore()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v5}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :cond_13
    iget-object v3, p0, Lcom/apk/final;->extends:Landroid/view/View;

    if-eqz v3, :cond_14

    .line 71
    new-instance v4, Lcom/apk/while;

    invoke-direct {v4, p0, v12}, Lcom/apk/while;-><init>(Lcom/apk/final;Lcom/swl/gg/bean/SwlAdView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_15
    return-void
.end method
