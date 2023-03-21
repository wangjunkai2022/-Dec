.class public final Lcom/apk/yu;
.super Ljava/lang/Object;
.source "XXPermissions.java"


# static fields
.field public static volatile for:Ljava/lang/Boolean;


# instance fields
.field public do:Landroid/app/Activity;

.field public if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/yu;->do:Landroid/app/Activity;

    return-void
.end method

.method public static varargs do(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 1

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/apk/mu;->strictfp(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Lcom/apk/mu;->p(Landroid/content/Context;Ljava/util/List;)Z

    move-result p0

    return p0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/apk/mu;->new([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Lcom/apk/mu;->p(Landroid/content/Context;Ljava/util/List;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public for(Lcom/apk/vu;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/apk/yu;->if:Ljava/util/List;

    if-eqz v2, :cond_21

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_21

    .line 2
    iget-object v2, v0, Lcom/apk/yu;->do:Landroid/app/Activity;

    if-eqz v2, :cond_20

    .line 3
    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 4
    iget-object v2, v0, Lcom/apk/yu;->do:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 5
    sget-object v2, Lcom/apk/yu;->for:Ljava/lang/Boolean;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 6
    iget-object v2, v0, Lcom/apk/yu;->do:Landroid/app/Activity;

    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 9
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/apk/yu;->for:Ljava/lang/Boolean;

    .line 10
    :cond_1
    iget-object v2, v0, Lcom/apk/yu;->if:Ljava/util/List;

    const-string v4, "android.permission.MANAGE_EXTERNAL_STORAGE"

    .line 11
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "Please do not apply for these two permissions dynamically"

    const-string v7, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v8, "android.permission.READ_EXTERNAL_STORAGE"

    if-eqz v5, :cond_3

    .line 12
    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 13
    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 14
    invoke-static {}, Lcom/apk/mu;->e()Z

    move-result v5

    if-nez v5, :cond_3

    .line 15
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    const-string v5, "android.permission.ANSWER_PHONE_CALLS"

    .line 18
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "android.permission.PROCESS_OUTGOING_CALLS"

    if-eqz v9, :cond_5

    .line 19
    invoke-interface {v2, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 20
    invoke-static {}, Lcom/apk/mu;->d()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {v2, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 21
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 22
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    const-string v6, "android.permission.ACTIVITY_RECOGNITION"

    .line 23
    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    const-string v11, "android.permission.BODY_SENSORS"

    if-eqz v9, :cond_6

    .line 24
    invoke-static {}, Lcom/apk/mu;->d()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 25
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_6
    sget-object v2, Lcom/apk/yu;->for:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v9, "android.permission.READ_PHONE_NUMBERS"

    const-string v12, "android.permission.ACCESS_NOTIFICATION_POLICY"

    if-eqz v2, :cond_d

    .line 27
    iget-object v2, v0, Lcom/apk/yu;->do:Landroid/app/Activity;

    iget-object v13, v0, Lcom/apk/yu;->if:Ljava/util/List;

    .line 28
    invoke-interface {v13, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    const/16 v13, 0x1e

    goto :goto_5

    :cond_7
    const-string v14, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 29
    invoke-interface {v13, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 30
    invoke-interface {v13, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    const-string v14, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 31
    invoke-interface {v13, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    goto :goto_4

    :cond_8
    const-string v14, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 32
    invoke-interface {v13, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 33
    invoke-interface {v13, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 34
    invoke-interface {v13, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 35
    invoke-interface {v13, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    goto :goto_3

    :cond_9
    const/16 v13, 0x17

    goto :goto_5

    :cond_a
    :goto_3
    const/16 v13, 0x1a

    goto :goto_5

    :cond_b
    :goto_4
    const/16 v13, 0x1d

    .line 36
    :goto_5
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v2, v13, :cond_c

    goto :goto_6

    .line 37
    :cond_c
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "The targetSdkVersion SDK must be "

    const-string v3, " or more"

    invoke-static {v2, v13, v3}, Lcom/apk/goto;->instanceof(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_d
    :goto_6
    iget-object v2, v0, Lcom/apk/yu;->do:Landroid/app/Activity;

    iget-object v13, v0, Lcom/apk/yu;->if:Ljava/util/List;

    invoke-static {v2, v13}, Lcom/apk/mu;->p(Landroid/content/Context;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 39
    iget-object v2, v0, Lcom/apk/yu;->if:Ljava/util/List;

    invoke-interface {v1, v2, v3}, Lcom/apk/vu;->if(Ljava/util/List;Z)V

    goto/16 :goto_d

    .line 40
    :cond_e
    sget-object v2, Lcom/apk/yu;->for:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 41
    iget-object v2, v0, Lcom/apk/yu;->do:Landroid/app/Activity;

    iget-object v3, v0, Lcom/apk/yu;->if:Ljava/util/List;

    .line 42
    invoke-static {v2}, Lcom/apk/mu;->strictfp(Landroid/content/Context;)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_1b

    .line 43
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1b

    .line 44
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x18

    if-lt v14, v15, :cond_f

    .line 45
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    goto :goto_7

    :cond_f
    const/16 v2, 0x17

    .line 46
    :goto_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const/16 v15, 0x1e

    if-ge v2, v15, :cond_12

    .line 47
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 48
    invoke-interface {v13, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 49
    invoke-interface {v13, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    goto :goto_9

    .line 50
    :cond_10
    new-instance v1, Lcom/apk/uu;

    invoke-direct {v1, v7}, Lcom/apk/uu;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_11
    new-instance v1, Lcom/apk/uu;

    invoke-direct {v1, v8}, Lcom/apk/uu;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    :goto_9
    const/16 v15, 0x1d

    if-ge v2, v15, :cond_14

    .line 52
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 53
    invoke-interface {v13, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    goto :goto_a

    .line 54
    :cond_13
    new-instance v1, Lcom/apk/uu;

    invoke-direct {v1, v11}, Lcom/apk/uu;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    :goto_a
    const/16 v15, 0x1a

    if-ge v2, v15, :cond_18

    .line 55
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 56
    invoke-interface {v13, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    goto :goto_b

    .line 57
    :cond_15
    new-instance v1, Lcom/apk/uu;

    invoke-direct {v1, v10}, Lcom/apk/uu;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_16
    :goto_b
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_18

    const-string v15, "android.permission.READ_PHONE_STATE"

    .line 59
    invoke-interface {v13, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_17

    goto :goto_c

    .line 60
    :cond_17
    new-instance v1, Lcom/apk/uu;

    invoke-direct {v1, v15}, Lcom/apk/uu;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_18
    :goto_c
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_19

    goto :goto_8

    .line 62
    :cond_19
    invoke-interface {v13, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1a

    goto :goto_8

    .line 63
    :cond_1a
    new-instance v1, Lcom/apk/uu;

    invoke-direct {v1, v14}, Lcom/apk/uu;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_1b
    new-instance v1, Lcom/apk/uu;

    invoke-direct {v1}, Lcom/apk/uu;-><init>()V

    throw v1

    .line 65
    :cond_1c
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/apk/yu;->if:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 66
    new-instance v3, Lcom/apk/xu;

    invoke-direct {v3}, Lcom/apk/xu;-><init>()V

    .line 67
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 68
    :cond_1d
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x4030000000000000L    # 16.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 69
    sget-object v6, Lcom/apk/xu;->for:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1d

    const-string v6, "request_code"

    .line 70
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "permission_group"

    .line 71
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "request_constant"

    const/4 v5, 0x0

    .line 72
    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    invoke-virtual {v3, v4}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 74
    iget-object v2, v0, Lcom/apk/yu;->do:Landroid/app/Activity;

    .line 75
    sget-object v4, Lcom/apk/xu;->for:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_d
    return-void

    .line 77
    :cond_1e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The event has been finish"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_1f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The event has been destroyed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The activity is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_21
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The requested permission cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public varargs if([Ljava/lang/String;)Lcom/apk/yu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/yu;->if:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/apk/mu;->new([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/yu;->if:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/apk/mu;->new([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-object p0
.end method
