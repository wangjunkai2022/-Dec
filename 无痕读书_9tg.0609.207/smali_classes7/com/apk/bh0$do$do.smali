.class public final Lcom/apk/bh0$do$do;
.super Lcom/apk/bh0;
.source "RequestBody.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/bh0$do;->if([BLcom/apk/vg0;II)Lcom/apk/bh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic for:Lcom/apk/vg0;

.field public final synthetic if:[B

.field public final synthetic new:I

.field public final synthetic try:I


# direct methods
.method public constructor <init>([BLcom/apk/vg0;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/bh0$do$do;->if:[B

    iput-object p2, p0, Lcom/apk/bh0$do$do;->for:Lcom/apk/vg0;

    iput p3, p0, Lcom/apk/bh0$do$do;->new:I

    iput p4, p0, Lcom/apk/bh0$do$do;->try:I

    invoke-direct {p0}, Lcom/apk/bh0;-><init>()V

    return-void
.end method


# virtual methods
.method public do()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/bh0$do$do;->new:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public for(Lcom/apk/sk0;)V
    .locals 3
    .param p1    # Lcom/apk/sk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/apk/bh0$do$do;->if:[B

    iget v1, p0, Lcom/apk/bh0$do$do;->try:I

    iget v2, p0, Lcom/apk/bh0$do$do;->new:I

    invoke-interface {p1, v0, v1, v2}, Lcom/apk/sk0;->write([BII)Lcom/apk/sk0;

    return-void
.end method

.method public if()Lcom/apk/vg0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/bh0$do$do;->for:Lcom/apk/vg0;

    return-object v0
.end method
