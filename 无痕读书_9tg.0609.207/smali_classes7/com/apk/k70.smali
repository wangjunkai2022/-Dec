.class public Lcom/apk/k70;
.super Lcom/apk/f70;
.source "BaseAdSizeProviderSuper.java"


# instance fields
.field public case:I

.field public try:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f70;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/apk/k70;->try:I

    .line 3
    iput v0, p0, Lcom/apk/k70;->case:I

    return-void
.end method


# virtual methods
.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/k70;->try:I

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/r70;->do()I

    move-result v0

    iput v0, p0, Lcom/apk/k70;->try:I

    .line 3
    :cond_0
    iget v0, p0, Lcom/apk/k70;->try:I

    return v0
.end method
