.class public Lcom/apk/mt;
.super Ljava/lang/Object;
.source "PopCommon.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic do:Lcom/apk/nt;


# direct methods
.method public constructor <init>(Lcom/apk/nt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/mt;->do:Lcom/apk/nt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/mt;->do:Lcom/apk/nt;

    .line 2
    iget-object v0, v0, Lcom/apk/nt;->do:Lcom/apk/lt;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/apk/lt;->if()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apk/mt;->do:Lcom/apk/nt;

    .line 5
    iget-object v1, v0, Lcom/apk/nt;->if:Lcom/apk/nt$do;

    if-eqz v1, :cond_1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    .line 6
    invoke-interface/range {v1 .. v6}, Lcom/apk/nt$do;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_1
    return-void
.end method
