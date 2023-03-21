.class public Lcom/apk/bh;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "StoreSpanSizeLookup.java"


# instance fields
.field public final do:Lcom/chad/library/adapter/base/BaseQuickAdapter;

.field public final if:I


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/bh;->do:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 3
    iput p2, p0, Lcom/apk/bh;->if:I

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/bh;->do:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_5

    const/16 v1, 0x13

    if-eq p1, v1, :cond_5

    const/16 v1, 0x16

    if-eq p1, v1, :cond_5

    const/16 v1, 0x18

    if-ne p1, v1, :cond_0

    goto :goto_2

    :cond_0
    if-eq p1, v0, :cond_4

    const/16 v0, 0x10

    if-eq p1, v0, :cond_4

    const/16 v0, 0x11

    if-eq p1, v0, :cond_4

    const/16 v0, 0x14

    if-eq p1, v0, :cond_4

    const/16 v0, 0xe

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/16 v1, 0x8

    if-eq p1, v1, :cond_3

    const/16 v1, 0xa

    if-eq p1, v1, :cond_3

    const/16 v1, 0x19

    if-eq p1, v1, :cond_3

    const/16 v1, 0xb

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 2
    :cond_2
    iget p1, p0, Lcom/apk/bh;->if:I

    return p1

    :cond_3
    :goto_0
    return v0

    :cond_4
    :goto_1
    const/4 p1, 0x4

    return p1

    :cond_5
    :goto_2
    return v0
.end method
