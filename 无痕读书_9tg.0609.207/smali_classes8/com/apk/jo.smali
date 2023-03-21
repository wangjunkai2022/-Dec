.class public final Lcom/apk/jo;
.super Ljava/lang/Object;
.source "HardwareConfigState.java"


# static fields
.field public static final case:Ljava/io/File;

.field public static volatile else:Lcom/apk/jo;


# instance fields
.field public final do:Z

.field public final for:I

.field public final if:I

.field public new:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public try:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/fd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/apk/jo;->case:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/apk/jo;->try:Z

    .line 3
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x7

    if-ge v1, v3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "SM-N935"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "SM-J720"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v4, "SM-G965"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_3
    const-string v4, "SM-G960"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_4
    const-string v4, "SM-G935"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string v4, "SM-G930"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_6
    const-string v4, "SM-A520"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x6

    :cond_1
    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 5
    :pswitch_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 6
    :cond_3
    :goto_1
    iput-boolean v0, p0, Lcom/apk/jo;->do:Z

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_4

    const/16 v0, 0x4e20

    .line 8
    iput v0, p0, Lcom/apk/jo;->if:I

    .line 9
    iput v2, p0, Lcom/apk/jo;->for:I

    goto :goto_2

    :cond_4
    const/16 v0, 0x2bc

    .line 10
    iput v0, p0, Lcom/apk/jo;->if:I

    const/16 v0, 0x80

    .line 11
    iput v0, p0, Lcom/apk/jo;->for:I

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x535d271b -> :sswitch_6
        -0x535a5dbe -> :sswitch_5
        -0x535a5db9 -> :sswitch_4
        -0x535a5d61 -> :sswitch_3
        -0x535a5d5c -> :sswitch_2
        -0x53590842 -> :sswitch_1
        -0x53572f20 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static do()Lcom/apk/jo;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/jo;->else:Lcom/apk/jo;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/apk/jo;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/apk/jo;->else:Lcom/apk/jo;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/apk/jo;

    invoke-direct {v1}, Lcom/apk/jo;-><init>()V

    sput-object v1, Lcom/apk/jo;->else:Lcom/apk/jo;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/apk/jo;->else:Lcom/apk/jo;

    return-object v0
.end method


# virtual methods
.method public if(IIZZ)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 1
    iget-boolean p3, p0, Lcom/apk/jo;->do:Z

    if-eqz p3, :cond_3

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p3, v1, :cond_3

    if-eqz p4, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget p3, p0, Lcom/apk/jo;->for:I

    const/4 p4, 0x1

    if-lt p1, p3, :cond_3

    if-lt p2, p3, :cond_3

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget p1, p0, Lcom/apk/jo;->new:I

    add-int/2addr p1, p4

    iput p1, p0, Lcom/apk/jo;->new:I

    const/16 p2, 0x32

    if-lt p1, p2, :cond_2

    .line 5
    iput v0, p0, Lcom/apk/jo;->new:I

    .line 6
    sget-object p1, Lcom/apk/jo;->case:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    .line 7
    iget p2, p0, Lcom/apk/jo;->if:I

    if-ge p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/apk/jo;->try:Z

    .line 8
    :cond_2
    iget-boolean p1, p0, Lcom/apk/jo;->try:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_3
    :goto_1
    return v0
.end method
