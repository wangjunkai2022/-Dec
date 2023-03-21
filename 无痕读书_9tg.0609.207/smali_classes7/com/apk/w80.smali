.class public Lcom/apk/w80;
.super Ljava/lang/Object;
.source "CommonBaseAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic do:Lcom/apk/r80;

.field public final synthetic for:Lcom/apk/y80;

.field public final synthetic if:I


# direct methods
.method public constructor <init>(Lcom/apk/y80;Lcom/apk/r80;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/w80;->for:Lcom/apk/y80;

    iput-object p2, p0, Lcom/apk/w80;->do:Lcom/apk/r80;

    iput p3, p0, Lcom/apk/w80;->if:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/apk/w80;->for:Lcom/apk/y80;

    .line 2
    iget-object v0, p1, Lcom/apk/y80;->while:Lcom/apk/t90;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/apk/w80;->do:Lcom/apk/r80;

    .line 4
    iget-object p1, p1, Lcom/apk/s80;->new:Ljava/util/List;

    .line 5
    iget v2, p0, Lcom/apk/w80;->if:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget v2, p0, Lcom/apk/w80;->if:I

    invoke-interface {v0, v1, p1, v2}, Lcom/apk/t90;->do(Lcom/apk/r80;Ljava/lang/Object;I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
