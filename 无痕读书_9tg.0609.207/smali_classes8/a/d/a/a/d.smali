.class public La/d/a/a/d;
.super Landroid/content/BroadcastReceiver;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-eqz p1, :cond_b

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, "openIdNotifyFlag"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "openIdPackage"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    const-string v0, "openIdPackageList"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    :goto_0
    const/4 v1, 0x1

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    return-void

    :cond_4
    const-string p1, "openIdType"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, La/d/a/a/e;->a()La/d/a/a/e;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    const-string v1, "oaid"

    .line 1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p2, La/d/a/a/e;->b:La/d/a/a/a;

    goto :goto_2

    :cond_5
    const-string v1, "vaid"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p2, La/d/a/a/e;->d:La/d/a/a/a;

    goto :goto_2

    :cond_6
    const-string v1, "aaid"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p2, La/d/a/a/e;->c:La/d/a/a/a;

    goto :goto_2

    :cond_7
    const-string v1, "udid"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object v0, p2, La/d/a/a/e;->a:La/d/a/a/a;

    :cond_8
    :goto_2
    if-nez v0, :cond_9

    return-void

    :cond_9
    const-wide/16 p1, 0x0

    .line 2
    iput-wide p1, v0, La/d/a/a/a;->a:J

    return-void

    .line 3
    :cond_a
    throw v0

    :cond_b
    :goto_3
    return-void
.end method
