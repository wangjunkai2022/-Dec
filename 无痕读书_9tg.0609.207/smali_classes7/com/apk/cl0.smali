.class public final Lcom/apk/cl0;
.super Lcom/apk/rc0;
.source "Options.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/cl0$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/rc0<",
        "Lcom/apk/uk0;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static final for:Lcom/apk/cl0$do;


# instance fields
.field public final do:[Lcom/apk/uk0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final if:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/apk/cl0$do;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apk/cl0$do;-><init>(Lcom/apk/md0;)V

    sput-object v0, Lcom/apk/cl0;->for:Lcom/apk/cl0$do;

    return-void
.end method

.method public constructor <init>([Lcom/apk/uk0;[ILcom/apk/md0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/rc0;-><init>()V

    iput-object p1, p0, Lcom/apk/cl0;->do:[Lcom/apk/uk0;

    iput-object p2, p0, Lcom/apk/cl0;->if:[I

    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/apk/uk0;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/apk/uk0;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/qc0;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public do()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/cl0;->do:[Lcom/apk/uk0;

    array-length v0, v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/cl0;->do:[Lcom/apk/uk0;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/apk/uk0;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/apk/uk0;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/rc0;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/apk/uk0;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/apk/uk0;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/rc0;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
