.class public Lcom/apk/fq0$do;
.super Lcom/apk/hq0;
.source "ArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/fq0;->catch()Lcom/apk/hq0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/hq0<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic new:Lcom/apk/fq0;


# direct methods
.method public constructor <init>(Lcom/apk/fq0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/fq0$do;->new:Lcom/apk/fq0;

    invoke-direct {p0}, Lcom/apk/hq0;-><init>()V

    return-void
.end method


# virtual methods
.method public do(II)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/fq0$do;->new:Lcom/apk/fq0;

    iget-object v0, v0, Lcom/apk/iq0;->if:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method

.method public if(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/fq0$do;->new:Lcom/apk/fq0;

    invoke-virtual {v0, p1}, Lcom/apk/iq0;->try(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
