.class public Lcom/apk/vo0;
.super Ljava/lang/Object;
.source "ParseSettings.java"


# static fields
.field public static final for:Lcom/apk/vo0;

.field public static final new:Lcom/apk/vo0;


# instance fields
.field public final do:Z

.field public final if:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/vo0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/apk/vo0;-><init>(ZZ)V

    sput-object v0, Lcom/apk/vo0;->for:Lcom/apk/vo0;

    .line 2
    new-instance v0, Lcom/apk/vo0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/apk/vo0;-><init>(ZZ)V

    sput-object v0, Lcom/apk/vo0;->new:Lcom/apk/vo0;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/apk/vo0;->do:Z

    .line 3
    iput-boolean p2, p0, Lcom/apk/vo0;->if:Z

    return-void
.end method

.method public static do(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/apk/sb0;->volatile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public if(Lcom/apk/do0;)Lcom/apk/do0;
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-boolean v0, p0, Lcom/apk/vo0;->if:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p1, Lcom/apk/do0;->do:I

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p1, Lcom/apk/do0;->if:[Ljava/lang/String;

    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/apk/sb0;->volatile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method
