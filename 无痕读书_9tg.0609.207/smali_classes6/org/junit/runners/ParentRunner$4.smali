.class Lorg/junit/runners/ParentRunner$4;
.super Ljava/lang/Object;
.source "ParentRunner.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/runners/ParentRunner;->comparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/junit/runners/ParentRunner;


# direct methods
.method constructor <init>(Lorg/junit/runners/ParentRunner;)V
    .locals 0

    .prologue
    .line 377
    .local p0, "this":Lorg/junit/runners/ParentRunner$4;, "Lorg/junit/runners/ParentRunner.4;"
    iput-object p1, p0, Lorg/junit/runners/ParentRunner$4;->this$0:Lorg/junit/runners/ParentRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "this":Lorg/junit/runners/ParentRunner$4;, "Lorg/junit/runners/ParentRunner.4;"
    .local p1, "o1":Ljava/lang/Object;, "TT;"
    .local p2, "o2":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/junit/runners/ParentRunner$4;->this$0:Lorg/junit/runners/ParentRunner;

    invoke-static {v0}, Lorg/junit/runners/ParentRunner;->access$100(Lorg/junit/runners/ParentRunner;)Lorg/junit/runner/manipulation/Sorter;

    move-result-object v0

    iget-object v1, p0, Lorg/junit/runners/ParentRunner$4;->this$0:Lorg/junit/runners/ParentRunner;

    invoke-virtual {v1, p1}, Lorg/junit/runners/ParentRunner;->describeChild(Ljava/lang/Object;)Lorg/junit/runner/Description;

    move-result-object v1

    iget-object v2, p0, Lorg/junit/runners/ParentRunner$4;->this$0:Lorg/junit/runners/ParentRunner;

    invoke-virtual {v2, p2}, Lorg/junit/runners/ParentRunner;->describeChild(Ljava/lang/Object;)Lorg/junit/runner/Description;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/junit/runner/manipulation/Sorter;->compare(Lorg/junit/runner/Description;Lorg/junit/runner/Description;)I

    move-result v0

    return v0
.end method
