.class public Lcom/apk/import;
.super Ljava/lang/Object;
.source "AdChapterUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/import$try;
    }
.end annotation


# instance fields
.field public break:I

.field public case:I

.field public catch:I

.field public class:I

.field public const:I

.field public default:I

.field public do:J

.field public else:I

.field public extends:Lcom/apk/d60;

.field public final:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/g;",
            ">;"
        }
    .end annotation
.end field

.field public finally:Z

.field public for:Ljava/lang/String;

.field public goto:I

.field public if:I

.field public import:Z

.field public native:Landroid/os/CountDownTimer;

.field public new:Z

.field public public:Z

.field public return:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/g;",
            ">;"
        }
    .end annotation
.end field

.field public static:Ljava/lang/String;

.field public super:Z

.field public switch:I

.field public this:I

.field public final throw:Lcom/apk/v60;

.field public throws:Z

.field public try:Z

.field public final while:Lcom/apk/z60;


# direct methods
.method public constructor <init>(Lcom/apk/hf;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/apk/import;->catch:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/apk/import;->final:Ljava/util/List;

    .line 4
    new-instance v2, Lcom/apk/import$do;

    invoke-direct {v2, p0}, Lcom/apk/import$do;-><init>(Lcom/apk/import;)V

    iput-object v2, p0, Lcom/apk/import;->throw:Lcom/apk/v60;

    .line 5
    new-instance v2, Lcom/apk/import$if;

    invoke-direct {v2, p0}, Lcom/apk/import$if;-><init>(Lcom/apk/import;)V

    iput-object v2, p0, Lcom/apk/import;->while:Lcom/apk/z60;

    .line 6
    sget-object v2, Lcom/apk/hf;->do:Lcom/apk/hf;

    const-string v3, "v_style"

    const-string v4, "module"

    const-string v5, "tips"

    const/4 v6, 0x0

    const-string v7, "imgcounts"

    const-string v8, "chapters"

    const-string v9, "weight"

    const-string v10, "video_list"

    const-string v11, "a"

    if-ne v2, p1, :cond_1

    .line 7
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/finally;->return()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object p1

    .line 9
    iget-object p1, p1, Lcom/apk/finally;->final:Lorg/json/JSONObject;

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-static {p1}, Lcom/apk/finally;->g(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 12
    iput-object v1, p0, Lcom/apk/import;->return:Ljava/util/List;

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {p1, v1}, Lcom/apk/finally;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 15
    :goto_0
    invoke-static {p1}, Lcom/apk/finally;->try(Lorg/json/JSONObject;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/apk/import;->throws:Z

    if-eqz v1, :cond_4

    .line 16
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/apk/import;->else:I

    if-lez v1, :cond_4

    .line 17
    invoke-static {p1}, Lcom/apk/finally;->goto(Lorg/json/JSONObject;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/apk/import;->do:J

    .line 18
    invoke-virtual {p1, v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/apk/import;->if:I

    .line 19
    invoke-virtual {p1, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/apk/import;->goto:I

    .line 20
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/import;->for:Ljava/lang/String;

    .line 21
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/apk/import;->new:Z

    .line 23
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/apk/import;->try:Z

    goto :goto_2

    .line 25
    :cond_1
    sget-object v2, Lcom/apk/hf;->if:Lcom/apk/hf;

    if-ne v2, p1, :cond_2

    .line 26
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/finally;->static()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 27
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object p1

    .line 28
    iget-object v1, p1, Lcom/apk/finally;->super:Lorg/json/JSONObject;

    :cond_2
    if-eqz v1, :cond_4

    .line 29
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 30
    invoke-static {v1}, Lcom/apk/finally;->g(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/apk/import;->return:Ljava/util/List;

    goto :goto_1

    .line 32
    :cond_3
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-static {v1, p1}, Lcom/apk/finally;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 34
    :goto_1
    invoke-static {v1}, Lcom/apk/finally;->try(Lorg/json/JSONObject;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/apk/import;->throws:Z

    if-eqz p1, :cond_4

    .line 35
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/apk/import;->else:I

    if-lez p1, :cond_4

    .line 36
    invoke-static {v1}, Lcom/apk/finally;->goto(Lorg/json/JSONObject;)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/apk/import;->do:J

    .line 37
    invoke-virtual {v1, v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/apk/import;->if:I

    .line 38
    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/apk/import;->goto:I

    .line 39
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/import;->for:Ljava/lang/String;

    .line 40
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/apk/import;->new:Z

    .line 42
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/apk/import;->try:Z

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public break(Landroid/widget/TextView;Ljava/lang/String;Lcom/apk/import$try;)V
    .locals 10

    .line 1
    new-instance v0, Lcom/apk/import$for;

    invoke-direct {v0, p0, p3}, Lcom/apk/import$for;-><init>(Lcom/apk/import;Lcom/apk/import$try;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-wide v0, p0, Lcom/apk/import;->do:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apk/import;->static:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/apk/import;->public:Z

    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    .line 5
    invoke-interface {p3}, Lcom/apk/import$try;->do()V

    :cond_1
    if-eqz p3, :cond_2

    .line 6
    invoke-interface {p3}, Lcom/apk/import$try;->start()V

    :cond_2
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/apk/import;->public:Z

    .line 8
    iget-object v0, p0, Lcom/apk/import;->native:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/apk/import;->native:Landroid/os/CountDownTimer;

    .line 11
    :cond_3
    new-instance v0, Lcom/apk/import$new;

    .line 12
    iget-wide v3, p0, Lcom/apk/import;->do:J

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    .line 13
    invoke-direct/range {v1 .. v9}, Lcom/apk/import$new;-><init>(Lcom/apk/import;JJLandroid/widget/TextView;Ljava/lang/String;Lcom/apk/import$try;)V

    iput-object v0, p0, Lcom/apk/import;->native:Landroid/os/CountDownTimer;

    .line 14
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    .line 15
    invoke-interface {p3}, Lcom/apk/import$try;->do()V

    :cond_5
    :goto_0
    return-void
.end method

.method public case()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/apk/import;->case:I

    .line 2
    iput v0, p0, Lcom/apk/import;->break:I

    .line 3
    invoke-static {}, Lcom/apk/e;->while()Lcom/apk/e;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/apk/f;->do:Z

    .line 5
    iget-object v0, v0, Lcom/apk/e;->goto:Ljava/util/Map;

    const-string v2, "other"

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    invoke-static {}, Lcom/apk/c;->while()Lcom/apk/c;

    move-result-object v0

    .line 8
    iput-boolean v1, v0, Lcom/apk/f;->do:Z

    .line 9
    iget-object v0, v0, Lcom/apk/c;->goto:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/apk/import;->extends:Lcom/apk/d60;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0}, Lcom/apk/d60;->case()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/apk/import;->extends:Lcom/apk/d60;

    :cond_2
    return-void
.end method

.method public do()Lcom/apk/g;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/import;->return:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, p0, Lcom/apk/import;->throws:Z

    if-eqz v1, :cond_0

    .line 3
    iget v1, p0, Lcom/apk/import;->default:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/g;

    return-object v0

    .line 4
    :cond_0
    iget v1, p0, Lcom/apk/import;->switch:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/g;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public else(Landroid/app/Activity;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/apk/import;->do()Lcom/apk/g;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/apk/g;->if()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {v0}, Lcom/apk/g;->do()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-static {v3}, Lcom/swl/gg/sdk/TrAdSdk;->isFullAdType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/apk/c;->while()Lcom/apk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/f;->this()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/apk/c;->while()Lcom/apk/c;

    move-result-object v1

    const/4 v5, 0x0

    const-string v6, "read"

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/apk/c;->import(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/apk/v60;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v3}, Lcom/swl/gg/sdk/TrAdSdk;->isRewardAdType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lcom/apk/e;->while()Lcom/apk/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/f;->this()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    invoke-static {}, Lcom/apk/e;->while()Lcom/apk/e;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "read"

    invoke-virtual {p1, v3, v4, v0, v1}, Lcom/apk/e;->import(Ljava/lang/String;Ljava/lang/String;Lcom/apk/z60;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/apk/import;->extends:Lcom/apk/d60;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/apk/import;->finally:Z

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v0, p1}, Lcom/apk/d60;->else(Landroid/app/Activity;)V

    .line 12
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/apk/import;->throws:Z

    if-eqz p1, :cond_3

    .line 13
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object p1

    iget-object v0, p0, Lcom/apk/import;->return:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/apk/finally;->this(Ljava/util/List;)I

    move-result p1

    iput p1, p0, Lcom/apk/import;->default:I

    goto :goto_1

    .line 14
    :cond_3
    iget p1, p0, Lcom/apk/import;->switch:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/apk/import;->switch:I

    :goto_1
    return-void
.end method

.method public for()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/import;->goto:I

    if-lez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/eg;->implements()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public goto(Landroid/app/Activity;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/apk/import;->do()Lcom/apk/g;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lcom/apk/g;->if()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v0}, Lcom/apk/g;->do()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {v2}, Lcom/swl/gg/sdk/TrAdSdk;->isFullAdType(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "read"

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/apk/c;->while()Lcom/apk/c;

    move-result-object p1

    invoke-virtual {p1, v2, v3, v1}, Lcom/apk/c;->native(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v2}, Lcom/swl/gg/sdk/TrAdSdk;->isRewardAdType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/apk/e;->while()Lcom/apk/e;

    move-result-object p1

    invoke-virtual {p1, v2, v3, v1}, Lcom/apk/e;->native(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/apk/import;->extends:Lcom/apk/d60;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/apk/import;->finally:Z

    .line 10
    new-instance v1, Lcom/apk/d60;

    new-instance v0, Lcom/apk/public;

    invoke-direct {v0, p0}, Lcom/apk/public;-><init>(Lcom/apk/import;)V

    const-string v4, ""

    invoke-direct {v1, p1, v0, v4}, Lcom/apk/d60;-><init>(Landroid/app/Activity;Lcom/apk/w60;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/apk/import;->extends:Lcom/apk/d60;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 11
    invoke-virtual/range {v1 .. v6}, Lcom/apk/d60;->try(Ljava/lang/String;Ljava/lang/String;IIZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public if(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apk/import;->static:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public new(Lcom/apk/hf;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/apk/hf;->do:Lcom/apk/hf;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_2

    .line 2
    iget-boolean p1, p0, Lcom/apk/import;->import:Z

    if-eqz p1, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/finally;->return()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    iget p1, p0, Lcom/apk/import;->case:I

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/apk/import;->if:I

    if-eqz v0, :cond_1

    rem-int/2addr p1, v0

    if-nez p1, :cond_1

    iget p1, p0, Lcom/apk/import;->else:I

    if-lez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 5
    :cond_2
    sget-object v0, Lcom/apk/hf;->if:Lcom/apk/hf;

    if-ne v0, p1, :cond_3

    .line 6
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/finally;->static()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    iget p1, p0, Lcom/apk/import;->case:I

    if-eqz p1, :cond_3

    iget v0, p0, Lcom/apk/import;->if:I

    if-eqz v0, :cond_3

    rem-int/2addr p1, v0

    if-nez p1, :cond_3

    iget p1, p0, Lcom/apk/import;->else:I

    if-lez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public this(Landroid/app/Activity;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/apk/import;->import:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lcom/apk/finally;->throw:Lorg/json/JSONObject;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Lcom/apk/finally;->super(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, v0, Lcom/apk/finally;->throw:Lorg/json/JSONObject;

    const-string v1, "chaptersVideos"

    invoke-static {v0, v1}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_a

    .line 5
    iget-object v0, p0, Lcom/apk/import;->final:Ljava/util/List;

    if-nez v0, :cond_5

    .line 6
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/apk/finally;->throw:Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    const-string v1, "chapters"

    .line 8
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/apk/import;->catch:I

    const-string v1, "showcounts"

    .line 9
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/apk/import;->class:I

    if-eqz v1, :cond_2

    const-string v1, "SP_READ_VIDEO_AD_DATE_TODAY_KEY"

    const-string v4, ""

    .line 10
    invoke-static {v1, v4}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {}, Lcom/apk/kg;->if()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "SP_READ_VIDEO_AD_COUNT_TODAY_KEY"

    .line 12
    invoke-static {v1, v2}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/apk/import;->const:I

    .line 13
    :cond_2
    iget v1, p0, Lcom/apk/import;->class:I

    if-eqz v1, :cond_3

    .line 14
    iget v4, p0, Lcom/apk/import;->const:I

    if-le v4, v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    return-void

    .line 15
    :cond_4
    invoke-static {v0}, Lcom/apk/finally;->e(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/apk/import;->final:Ljava/util/List;

    .line 16
    invoke-static {v0}, Lcom/apk/finally;->try(Lorg/json/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/apk/import;->super:Z

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/apk/import;->final:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    .line 18
    :cond_6
    iget v0, p0, Lcom/apk/import;->break:I

    if-eqz v0, :cond_9

    iget v1, p0, Lcom/apk/import;->catch:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_9

    .line 19
    :try_start_0
    iget-boolean v0, p0, Lcom/apk/import;->super:Z

    if-eqz v0, :cond_7

    .line 20
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/import;->final:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/apk/finally;->this(Ljava/util/List;)I

    move-result v0

    goto :goto_1

    .line 21
    :cond_7
    iget v0, p0, Lcom/apk/import;->this:I

    iget-object v1, p0, Lcom/apk/import;->final:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 22
    iget v1, p0, Lcom/apk/import;->this:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/apk/import;->this:I

    .line 23
    :goto_1
    iget-object v1, p0, Lcom/apk/import;->final:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/g;

    .line 24
    invoke-virtual {v0}, Lcom/apk/g;->if()Ljava/lang/String;

    move-result-object v6

    .line 25
    invoke-virtual {v0}, Lcom/apk/g;->do()Ljava/lang/String;

    move-result-object v7

    .line 26
    invoke-static {v6}, Lcom/swl/gg/sdk/TrAdSdk;->isFullAdType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 27
    invoke-static {}, Lcom/apk/c;->while()Lcom/apk/c;

    move-result-object v4

    iget-object v8, p0, Lcom/apk/import;->throw:Lcom/apk/v60;

    const-string v9, "other"

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/apk/c;->import(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/apk/v60;Ljava/lang/String;)V

    goto :goto_2

    .line 28
    :cond_8
    invoke-static {v6}, Lcom/swl/gg/sdk/TrAdSdk;->isRewardAdType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 29
    invoke-static {}, Lcom/apk/e;->while()Lcom/apk/e;

    move-result-object p1

    iget-object v0, p0, Lcom/apk/import;->while:Lcom/apk/z60;

    const-string v1, "other"

    invoke-virtual {p1, v6, v7, v0, v1}, Lcom/apk/e;->import(Ljava/lang/String;Ljava/lang/String;Lcom/apk/z60;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    :cond_9
    :goto_2
    iget p1, p0, Lcom/apk/import;->break:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/apk/import;->break:I

    nop

    :cond_a
    :goto_3
    return-void
.end method

.method public try()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/import;->return:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
