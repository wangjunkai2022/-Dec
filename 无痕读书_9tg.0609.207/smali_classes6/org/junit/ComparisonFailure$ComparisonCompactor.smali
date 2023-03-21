.class Lorg/junit/ComparisonFailure$ComparisonCompactor;
.super Ljava/lang/Object;
.source "ComparisonFailure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/ComparisonFailure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComparisonCompactor"
.end annotation


# static fields
.field private static final DELTA_END:Ljava/lang/String; = "]"

.field private static final DELTA_START:Ljava/lang/String; = "["

.field private static final ELLIPSIS:Ljava/lang/String; = "..."


# instance fields
.field private fActual:Ljava/lang/String;

.field private fContextLength:I

.field private fExpected:Ljava/lang/String;

.field private fPrefix:I

.field private fSuffix:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "contextLength"    # I
    .param p2, "expected"    # Ljava/lang/String;
    .param p3, "actual"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fContextLength:I

    .line 89
    iput-object p2, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fExpected:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fActual:Ljava/lang/String;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lorg/junit/ComparisonFailure$ComparisonCompactor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/junit/ComparisonFailure$ComparisonCompactor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/junit/ComparisonFailure$ComparisonCompactor;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private areStringsEqual()Z
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fExpected:Ljava/lang/String;

    iget-object v1, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fActual:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private compact(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v2, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fExpected:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fActual:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lorg/junit/ComparisonFailure$ComparisonCompactor;->areStringsEqual()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    :cond_0
    iget-object v2, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fExpected:Ljava/lang/String;

    iget-object v3, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fActual:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lorg/junit/Assert;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 102
    :goto_0
    return-object v2

    .line 98
    :cond_1
    invoke-direct {p0}, Lorg/junit/ComparisonFailure$ComparisonCompactor;->findCommonPrefix()V

    .line 99
    invoke-direct {p0}, Lorg/junit/ComparisonFailure$ComparisonCompactor;->findCommonSuffix()V

    .line 100
    iget-object v2, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/junit/ComparisonFailure$ComparisonCompactor;->compactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "expected":Ljava/lang/String;
    iget-object v2, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fActual:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/junit/ComparisonFailure$ComparisonCompactor;->compactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "actual":Ljava/lang/String;
    invoke-static {p1, v1, v0}, Lorg/junit/Assert;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private compactString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fPrefix:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fSuffix:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fPrefix:I

    if-lez v1, :cond_0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/junit/ComparisonFailure$ComparisonCompactor;->computeCommonPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_0
    iget v1, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fSuffix:I

    if-lez v1, :cond_1

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lorg/junit/ComparisonFailure$ComparisonCompactor;->computeCommonSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    :cond_1
    return-object v0
.end method

.method private computeCommonPrefix()Ljava/lang/String;
    .locals 5

    .prologue
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fPrefix:I

    iget v2, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fContextLength:I

    if-le v0, v2, :cond_0

    const-string v0, "..."

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fExpected:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fPrefix:I

    iget v4, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fContextLength:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fPrefix:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private computeCommonSuffix()Ljava/lang/String;
    .locals 5

    .prologue
    .line 142
    iget-object v1, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fSuffix:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fContextLength:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 143
    .local v0, "end":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fExpected:Ljava/lang/String;

    iget-object v3, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fSuffix:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v3, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fSuffix:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fContextLength:I

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_0

    const-string v1, "..."

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private findCommonPrefix()V
    .locals 4

    .prologue
    .line 117
    const/4 v1, 0x0

    iput v1, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fPrefix:I

    .line 118
    iget-object v1, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fActual:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 119
    .local v0, "end":I
    :goto_0
    iget v1, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fPrefix:I

    if-ge v1, v0, :cond_0

    .line 120
    iget-object v1, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fExpected:Ljava/lang/String;

    iget v2, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fPrefix:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fActual:Ljava/lang/String;

    iget v3, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fPrefix:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_1

    .line 124
    :cond_0
    return-void

    .line 119
    :cond_1
    iget v1, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fPrefix:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fPrefix:I

    goto :goto_0
.end method

.method private findCommonSuffix()V
    .locals 4

    .prologue
    .line 127
    iget-object v2, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 128
    .local v1, "expectedSuffix":I
    iget-object v2, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fActual:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 129
    .local v0, "actualSuffix":I
    :goto_0
    iget v2, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fPrefix:I

    if-lt v0, v2, :cond_0

    iget v2, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fPrefix:I

    if-lt v1, v2, :cond_0

    .line 130
    iget-object v2, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fActual:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    .line 134
    :cond_0
    iget-object v2, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fExpected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/junit/ComparisonFailure$ComparisonCompactor;->fSuffix:I

    .line 135
    return-void

    .line 129
    :cond_1
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method
