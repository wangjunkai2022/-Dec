.class public final enum Lcom/ss/android/socialbase/downloader/constants/f;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/socialbase/downloader/constants/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ss/android/socialbase/downloader/constants/f;

.field public static final enum b:Lcom/ss/android/socialbase/downloader/constants/f;

.field public static final enum c:Lcom/ss/android/socialbase/downloader/constants/f;

.field public static final synthetic d:[Lcom/ss/android/socialbase/downloader/constants/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/ss/android/socialbase/downloader/constants/f;

    const-string v1, "MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/constants/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/constants/f;->a:Lcom/ss/android/socialbase/downloader/constants/f;

    .line 2
    new-instance v0, Lcom/ss/android/socialbase/downloader/constants/f;

    const-string v1, "SUB"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ss/android/socialbase/downloader/constants/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/constants/f;->b:Lcom/ss/android/socialbase/downloader/constants/f;

    .line 3
    new-instance v0, Lcom/ss/android/socialbase/downloader/constants/f;

    const-string v1, "NOTIFICATION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ss/android/socialbase/downloader/constants/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/constants/f;->c:Lcom/ss/android/socialbase/downloader/constants/f;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/ss/android/socialbase/downloader/constants/f;

    .line 4
    sget-object v5, Lcom/ss/android/socialbase/downloader/constants/f;->a:Lcom/ss/android/socialbase/downloader/constants/f;

    aput-object v5, v1, v2

    sget-object v2, Lcom/ss/android/socialbase/downloader/constants/f;->b:Lcom/ss/android/socialbase/downloader/constants/f;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/ss/android/socialbase/downloader/constants/f;->d:[Lcom/ss/android/socialbase/downloader/constants/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/constants/f;
    .locals 1

    .line 1
    const-class v0, Lcom/ss/android/socialbase/downloader/constants/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/socialbase/downloader/constants/f;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/socialbase/downloader/constants/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/f;->d:[Lcom/ss/android/socialbase/downloader/constants/f;

    invoke-virtual {v0}, [Lcom/ss/android/socialbase/downloader/constants/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/socialbase/downloader/constants/f;

    return-object v0
.end method
