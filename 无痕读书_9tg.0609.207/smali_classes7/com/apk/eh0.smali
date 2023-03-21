.class public final Lcom/apk/eh0;
.super Lcom/apk/dh0;
.source "ResponseBody.kt"


# instance fields
.field public final synthetic for:Lcom/apk/tk0;

.field public final synthetic new:Lcom/apk/vg0;

.field public final synthetic try:J


# direct methods
.method public constructor <init>(Lcom/apk/tk0;Lcom/apk/vg0;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/eh0;->for:Lcom/apk/tk0;

    iput-object p2, p0, Lcom/apk/eh0;->new:Lcom/apk/vg0;

    iput-wide p3, p0, Lcom/apk/eh0;->try:J

    invoke-direct {p0}, Lcom/apk/dh0;-><init>()V

    return-void
.end method


# virtual methods
.method public extends()Lcom/apk/tk0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/eh0;->for:Lcom/apk/tk0;

    return-object v0
.end method

.method public throw()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/apk/eh0;->try:J

    return-wide v0
.end method

.method public throws()Lcom/apk/vg0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/eh0;->new:Lcom/apk/vg0;

    return-object v0
.end method
