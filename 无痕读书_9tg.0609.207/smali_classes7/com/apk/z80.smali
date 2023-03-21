.class public Lcom/apk/z80;
.super Ljava/lang/Object;
.source "MultiBaseAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:Lcom/apk/r80;

.field public final synthetic for:I

.field public final synthetic if:I

.field public final synthetic new:Lcom/apk/b90;


# direct methods
.method public constructor <init>(Lcom/apk/b90;Lcom/apk/r80;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/z80;->new:Lcom/apk/b90;

    iput-object p2, p0, Lcom/apk/z80;->do:Lcom/apk/r80;

    iput p3, p0, Lcom/apk/z80;->if:I

    iput p4, p0, Lcom/apk/z80;->for:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/apk/z80;->new:Lcom/apk/b90;

    .line 2
    iget-object v0, p1, Lcom/apk/b90;->throw:Lcom/apk/da0;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/apk/z80;->do:Lcom/apk/r80;

    .line 4
    iget-object p1, p1, Lcom/apk/s80;->new:Ljava/util/List;

    .line 5
    iget v2, p0, Lcom/apk/z80;->if:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget v2, p0, Lcom/apk/z80;->if:I

    iget v3, p0, Lcom/apk/z80;->for:I

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/apk/da0;->do(Lcom/apk/r80;Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method
