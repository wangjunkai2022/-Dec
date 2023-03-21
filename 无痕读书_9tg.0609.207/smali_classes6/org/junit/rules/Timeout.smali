.class public Lorg/junit/rules/Timeout;
.super Ljava/lang/Object;
.source "Timeout.java"

# interfaces
.implements Lorg/junit/rules/TestRule;


# instance fields
.field private final fMillis:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "millis"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lorg/junit/rules/Timeout;->fMillis:I

    .line 43
    return-void
.end method


# virtual methods
.method public apply(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;)Lorg/junit/runners/model/Statement;
    .locals 4
    .param p1, "base"    # Lorg/junit/runners/model/Statement;
    .param p2, "description"    # Lorg/junit/runner/Description;

    .prologue
    .line 46
    new-instance v0, Lorg/junit/internal/runners/statements/FailOnTimeout;

    iget v1, p0, Lorg/junit/rules/Timeout;->fMillis:I

    int-to-long v2, v1

    invoke-direct {v0, p1, v2, v3}, Lorg/junit/internal/runners/statements/FailOnTimeout;-><init>(Lorg/junit/runners/model/Statement;J)V

    return-object v0
.end method
