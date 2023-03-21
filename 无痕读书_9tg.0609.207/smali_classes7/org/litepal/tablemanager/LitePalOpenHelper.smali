.class public Lorg/litepal/tablemanager/LitePalOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LitePalOpenHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "LitePalHelper"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 2
    invoke-static {}, Lorg/litepal/LitePalApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lorg/litepal/tablemanager/LitePalOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/litepal/tablemanager/Generator;->create(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2
    invoke-static {}, Lorg/litepal/Operator;->getDBListener()Lorg/litepal/tablemanager/callback/DatabaseListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    sget-object v0, Lorg/litepal/LitePalApplication;->sHandler:Landroid/os/Handler;

    new-instance v1, Lorg/litepal/tablemanager/LitePalOpenHelper$1;

    invoke-direct {v1, p0, p1}, Lorg/litepal/tablemanager/LitePalOpenHelper$1;-><init>(Lorg/litepal/tablemanager/LitePalOpenHelper;Lorg/litepal/tablemanager/callback/DatabaseListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/litepal/tablemanager/Generator;->upgrade(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2
    invoke-static {}, Lorg/litepal/parser/LitePalAttr;->getInstance()Lorg/litepal/parser/LitePalAttr;

    move-result-object p1

    invoke-virtual {p1}, Lorg/litepal/parser/LitePalAttr;->getExtraKeyName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/litepal/util/SharedUtil;->updateVersion(Ljava/lang/String;I)V

    .line 3
    invoke-static {}, Lorg/litepal/Operator;->getDBListener()Lorg/litepal/tablemanager/callback/DatabaseListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    sget-object v0, Lorg/litepal/LitePalApplication;->sHandler:Landroid/os/Handler;

    new-instance v1, Lorg/litepal/tablemanager/LitePalOpenHelper$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/litepal/tablemanager/LitePalOpenHelper$2;-><init>(Lorg/litepal/tablemanager/LitePalOpenHelper;Lorg/litepal/tablemanager/callback/DatabaseListener;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
