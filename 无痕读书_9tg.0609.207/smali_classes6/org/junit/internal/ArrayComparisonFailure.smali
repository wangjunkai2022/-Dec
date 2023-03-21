.class public Lorg/junit/internal/ArrayComparisonFailure;
.super Ljava/lang/AssertionError;
.source "ArrayComparisonFailure.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final fCause:Ljava/lang/AssertionError;

.field private fIndices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final fMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/AssertionError;I)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/AssertionError;
    .param p3, "index"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/junit/internal/ArrayComparisonFailure;->fIndices:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lorg/junit/internal/ArrayComparisonFailure;->fMessage:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lorg/junit/internal/ArrayComparisonFailure;->fCause:Ljava/lang/AssertionError;

    .line 32
    invoke-virtual {p0, p3}, Lorg/junit/internal/ArrayComparisonFailure;->addDimension(I)V

    .line 33
    return-void
.end method


# virtual methods
.method public addDimension(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lorg/junit/internal/ArrayComparisonFailure;->fIndices:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 37
    return-void
.end method

.method public getMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/junit/internal/ArrayComparisonFailure;->fMessage:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 43
    iget-object v3, p0, Lorg/junit/internal/ArrayComparisonFailure;->fMessage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :cond_0
    const-string v3, "arrays first differed at element "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v3, p0, Lorg/junit/internal/ArrayComparisonFailure;->fIndices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 47
    .local v1, "each":I
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 51
    .end local v1    # "each":I
    :cond_1
    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v3, p0, Lorg/junit/internal/ArrayComparisonFailure;->fCause:Ljava/lang/AssertionError;

    invoke-virtual {v3}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/junit/internal/ArrayComparisonFailure;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
