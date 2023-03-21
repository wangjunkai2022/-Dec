.class public Lcom/apk/x80;
.super Ljava/lang/Object;
.source "CommonBaseAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic do:I

.field public final synthetic for:I

.field public final synthetic if:Lcom/apk/r80;

.field public final synthetic new:Lcom/apk/y80;


# direct methods
.method public constructor <init>(Lcom/apk/y80;ILcom/apk/r80;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/x80;->new:Lcom/apk/y80;

    iput p2, p0, Lcom/apk/x80;->do:I

    iput-object p3, p0, Lcom/apk/x80;->if:Lcom/apk/r80;

    iput p4, p0, Lcom/apk/x80;->for:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/x80;->new:Lcom/apk/y80;

    .line 2
    iget-object v0, v0, Lcom/apk/y80;->native:Ljava/util/ArrayList;

    .line 3
    iget v1, p0, Lcom/apk/x80;->do:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/r90;

    iget-object v1, p0, Lcom/apk/x80;->if:Lcom/apk/r80;

    iget-object v2, p0, Lcom/apk/x80;->new:Lcom/apk/y80;

    .line 4
    iget-object v2, v2, Lcom/apk/s80;->new:Ljava/util/List;

    .line 5
    iget v3, p0, Lcom/apk/x80;->for:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Lcom/apk/x80;->for:I

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/apk/r90;->do(Lcom/apk/r80;Landroid/view/View;Ljava/lang/Object;I)V

    return-void
.end method
