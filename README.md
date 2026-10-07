# Ferralla! Arena de robots

Xogo web de loitas de robots para 1–4 xogadores, nun mesmo dispositivo ou en liña.

## Estrutura
- `index.html` — o xogo completo (un só ficheiro, sen compilación).

## Publicar en Vercel
1. Sube este cartafol a un repositorio novo de GitHub.
2. En Vercel: **Add New → Project → Import** o repositorio.
3. *Framework preset*: **Other**. Sen *build command* nin *output directory*.
4. **Deploy**.

## Modo en liña
Usa **Supabase Realtime (Broadcast)** do proxecto configurado en `index.html` (constante `SUPA`).
Non crea nin le táboas: só envía mensaxes por unha canle `ferralla-CÓDIGO`.

- Quen crea a sala é o **anfitrión**: fai funcionar a partida e envía o estado 15 veces por segundo.
- Os demais envían os seus controis (ata 15 veces por segundo, só cando cambian).
- Para probar sen Supabase en dúas pestanas do mesmo navegador: engade `?net=local` á URL.
