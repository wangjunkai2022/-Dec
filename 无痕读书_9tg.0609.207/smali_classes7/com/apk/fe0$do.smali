.class public final Lcom/apk/fe0$do;
.super Ljava/lang/Object;
.source "Strings.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lcom/apk/ud0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/fe0;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/apk/xd0;",
        ">;",
        "Lcom/apk/ud0;"
    }
.end annotation


# instance fields
.field public final synthetic case:Lcom/apk/fe0;

.field public do:I

.field public for:I

.field public if:I

.field public new:Lcom/apk/xd0;

.field public try:I


# direct methods
.method public constructor <init>(Lcom/apk/fe0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/apk/fe0$do;->case:Lcom/apk/fe0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/apk/fe0$do;->do:I

    .line 3
    iget v0, p1, Lcom/apk/fe0;->if:I

    .line 4
    iget-object p1, p1, Lcom/apk/fe0;->do:Ljava/lang/CharSequence;

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    if-ltz p1, :cond_2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-le v0, p1, :cond_1

    move v0, p1

    :cond_1
    :goto_0
    iput v0, p0, Lcom/apk/fe0$do;->if:I

    .line 6
    iput v0, p0, Lcom/apk/fe0$do;->for:I

    return-void

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is less than minimum "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final do()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/apk/fe0$do;->for:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 2
    iput v1, p0, Lcom/apk/fe0$do;->do:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/apk/fe0$do;->new:Lcom/apk/xd0;

    goto/16 :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apk/fe0$do;->case:Lcom/apk/fe0;

    .line 5
    iget v0, v0, Lcom/apk/fe0;->for:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lez v0, :cond_1

    .line 6
    iget v4, p0, Lcom/apk/fe0$do;->try:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/apk/fe0$do;->try:I

    if-ge v4, v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/apk/fe0$do;->for:I

    iget-object v4, p0, Lcom/apk/fe0$do;->case:Lcom/apk/fe0;

    .line 7
    iget-object v4, v4, Lcom/apk/fe0;->do:Ljava/lang/CharSequence;

    .line 8
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v0, v4, :cond_3

    .line 9
    :cond_2
    iget v0, p0, Lcom/apk/fe0$do;->if:I

    new-instance v1, Lcom/apk/xd0;

    iget-object v4, p0, Lcom/apk/fe0$do;->case:Lcom/apk/fe0;

    .line 10
    iget-object v4, v4, Lcom/apk/fe0;->do:Ljava/lang/CharSequence;

    .line 11
    invoke-static {v4}, Lcom/apk/ie0;->try(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v1, v0, v4}, Lcom/apk/xd0;-><init>(II)V

    iput-object v1, p0, Lcom/apk/fe0$do;->new:Lcom/apk/xd0;

    .line 12
    iput v2, p0, Lcom/apk/fe0$do;->for:I

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/apk/fe0$do;->case:Lcom/apk/fe0;

    .line 14
    iget-object v4, v0, Lcom/apk/fe0;->new:Lcom/apk/jd0;

    .line 15
    iget-object v0, v0, Lcom/apk/fe0;->do:Ljava/lang/CharSequence;

    .line 16
    iget v5, p0, Lcom/apk/fe0$do;->for:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Lcom/apk/jd0;->for(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/jc0;

    if-nez v0, :cond_4

    .line 17
    iget v0, p0, Lcom/apk/fe0$do;->if:I

    new-instance v1, Lcom/apk/xd0;

    iget-object v4, p0, Lcom/apk/fe0$do;->case:Lcom/apk/fe0;

    .line 18
    iget-object v4, v4, Lcom/apk/fe0;->do:Ljava/lang/CharSequence;

    .line 19
    invoke-static {v4}, Lcom/apk/ie0;->try(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v1, v0, v4}, Lcom/apk/xd0;-><init>(II)V

    iput-object v1, p0, Lcom/apk/fe0$do;->new:Lcom/apk/xd0;

    .line 20
    iput v2, p0, Lcom/apk/fe0$do;->for:I

    goto :goto_0

    .line 21
    :cond_4
    iget-object v2, v0, Lcom/apk/jc0;->do:Ljava/lang/Object;

    .line 22
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 23
    iget-object v0, v0, Lcom/apk/jc0;->if:Ljava/lang/Object;

    .line 24
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 25
    iget v4, p0, Lcom/apk/fe0$do;->if:I

    invoke-static {v4, v2}, Lcom/apk/yd0;->for(II)Lcom/apk/xd0;

    move-result-object v4

    iput-object v4, p0, Lcom/apk/fe0$do;->new:Lcom/apk/xd0;

    add-int/2addr v2, v0

    .line 26
    iput v2, p0, Lcom/apk/fe0$do;->if:I

    if-nez v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    add-int/2addr v2, v1

    .line 27
    iput v2, p0, Lcom/apk/fe0$do;->for:I

    .line 28
    :goto_0
    iput v3, p0, Lcom/apk/fe0$do;->do:I

    :goto_1
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/fe0$do;->do:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/fe0$do;->do()V

    .line 3
    :cond_0
    iget v0, p0, Lcom/apk/fe0$do;->do:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/apk/fe0$do;->do:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/apk/fe0$do;->do()V

    .line 3
    :cond_0
    iget v0, p0, Lcom/apk/fe0$do;->do:I

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/apk/fe0$do;->new:Lcom/apk/xd0;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lcom/apk/fe0$do;->new:Lcom/apk/xd0;

    .line 6
    iput v1, p0, Lcom/apk/fe0$do;->do:I

    return-object v0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
