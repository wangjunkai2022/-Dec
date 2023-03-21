.class public final Lcom/apk/qc0$do;
.super Lcom/apk/od0;
.source "AbstractCollection.kt"

# interfaces
.implements Lcom/apk/id0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/qc0;->toString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/od0;",
        "Lcom/apk/id0<",
        "TE;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/qc0;


# direct methods
.method public constructor <init>(Lcom/apk/qc0;)V
    .locals 0

    iput-object p1, p0, Lcom/apk/qc0$do;->do:Lcom/apk/qc0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/apk/od0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public if(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/qc0$do;->do:Lcom/apk/qc0;

    if-ne p1, v0, :cond_0

    const-string p1, "(this Collection)"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
