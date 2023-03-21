.class public Lcom/apk/ux;
.super Lcom/apk/tx;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/ux$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/tx<",
        "Lcom/apk/ww<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/wx;

    invoke-direct {v0}, Lcom/apk/wx;-><init>()V

    invoke-direct {p0, v0}, Lcom/apk/tx;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    return-void
.end method

.method public constructor <init>(Lcom/apk/ux$do;)V
    .locals 0

    .line 2
    new-instance p1, Lcom/apk/wx;

    invoke-direct {p1}, Lcom/apk/wx;-><init>()V

    invoke-direct {p0, p1}, Lcom/apk/tx;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    return-void
.end method


# virtual methods
.method public for()Ljava/lang/String;
    .locals 1

    const-string v0, "cache"

    return-object v0
.end method

.method public if(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 3

    .line 1
    check-cast p1, Lcom/apk/ww;

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3
    iget-object v1, p1, Lcom/apk/ww;->do:Ljava/lang/String;

    const-string v2, "key"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-wide v1, p1, Lcom/apk/ww;->if:J

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "localExpire"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7
    iget-object v1, p1, Lcom/apk/ww;->for:Lcom/apk/fy;

    .line 8
    invoke-static {v1}, Lcom/apk/mu;->z(Ljava/lang/Object;)[B

    move-result-object v1

    const-string v2, "head"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 9
    iget-object p1, p1, Lcom/apk/ww;->new:Ljava/lang/Object;

    .line 10
    invoke-static {p1}, Lcom/apk/mu;->z(Ljava/lang/Object;)[B

    move-result-object p1

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public new(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/apk/ww;

    invoke-direct {v0}, Lcom/apk/ww;-><init>()V

    const-string v1, "key"

    .line 2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    iput-object v1, v0, Lcom/apk/ww;->do:Ljava/lang/String;

    const-string v1, "localExpire"

    .line 4
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 5
    iput-wide v1, v0, Lcom/apk/ww;->if:J

    const-string v1, "head"

    .line 6
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/apk/mu;->A([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/fy;

    .line 7
    iput-object v1, v0, Lcom/apk/ww;->for:Lcom/apk/fy;

    const-string v1, "data"

    .line 8
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/apk/mu;->A([B)Ljava/lang/Object;

    move-result-object p1

    .line 9
    iput-object p1, v0, Lcom/apk/ww;->new:Ljava/lang/Object;

    return-object v0
.end method
