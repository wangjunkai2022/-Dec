.class public Lcom/apk/pp0;
.super Ljava/lang/Object;
.source "OpenIDHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/pp0$if;
    }
.end annotation


# instance fields
.field public do:Lcom/apk/op0;

.field public for:Ljava/lang/String;

.field public if:Ljava/lang/String;

.field public final new:Ljava/lang/Object;

.field public try:Landroid/content/ServiceConnection;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/apk/pp0;->do:Lcom/apk/op0;

    .line 3
    iput-object v0, p0, Lcom/apk/pp0;->if:Ljava/lang/String;

    iput-object v0, p0, Lcom/apk/pp0;->for:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/apk/pp0;->new:Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/apk/pp0$do;

    invoke-direct {v0, p0}, Lcom/apk/pp0$do;-><init>(Lcom/apk/pp0;)V

    iput-object v0, p0, Lcom/apk/pp0;->try:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public final do(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/apk/pp0;->if:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/pp0;->if:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/pp0;->for:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/apk/pp0;->if:Ljava/lang/String;

    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v4, 0x40

    invoke-virtual {p1, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 6
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_2

    .line 8
    array-length v0, p1

    if-lez v0, :cond_2

    aget-object p1, p1, v1

    const-string v0, "SHA1"

    .line 9
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    .line 10
    :try_start_1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    array-length v4, p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-byte v6, p1, v5

    and-int/lit16 v6, v6, 0xff

    or-int/lit16 v6, v6, 0x100

    .line 14
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_2
    move-object p1, v3

    .line 17
    :goto_2
    iput-object p1, p0, Lcom/apk/pp0;->for:Ljava/lang/String;

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/apk/pp0;->do:Lcom/apk/op0;

    iget-object v0, p0, Lcom/apk/pp0;->if:Ljava/lang/String;

    iget-object v4, p0, Lcom/apk/pp0;->for:Ljava/lang/String;

    check-cast p1, Lcom/apk/op0$do$do;

    if-eqz p1, :cond_5

    .line 19
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 20
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    const-string v6, "com.heytap.openid.IOpenID"

    .line 21
    :try_start_2
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-object p1, p1, Lcom/apk/op0$do$do;->do:Landroid/os/IBinder;

    invoke-interface {p1, v2, v3, v5, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 26
    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 27
    invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 29
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p1, ""

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    .line 31
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 32
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw p1

    .line 33
    :cond_5
    throw v3
.end method
