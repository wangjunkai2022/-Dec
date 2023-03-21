.class public final Lcom/apk/ij0$do;
.super Ljava/lang/Object;
.source "Huffman.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/ij0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# instance fields
.field public final do:[Lcom/apk/ij0$do;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final for:I

.field public final if:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [Lcom/apk/ij0$do;

    iput-object v0, p0, Lcom/apk/ij0$do;->do:[Lcom/apk/ij0$do;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/apk/ij0$do;->if:I

    .line 3
    iput v0, p0, Lcom/apk/ij0$do;->for:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apk/ij0$do;->do:[Lcom/apk/ij0$do;

    .line 5
    iput p1, p0, Lcom/apk/ij0$do;->if:I

    and-int/lit8 p1, p2, 0x7

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 6
    :cond_0
    iput p1, p0, Lcom/apk/ij0$do;->for:I

    return-void
.end method
